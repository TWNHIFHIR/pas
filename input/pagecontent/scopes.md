[SMART App Launch](https://hl7.org/fhir/smart-app-launch/STU2.2){:target="_blank"}實作指引定義了一套基於OAuth 2.0的授權與驗證模式，讓應用程式能與FHIR系統安全地整合。本章節說明TWPAS服務在支援前端應用程式（User-Facing Applications）與後端服務（Backend Services）時，所需遵循的SMART on FHIR規範要求與支援能力。

### 能力集合 (Capability Sets)
為了促進互通性，SMART on FHIR定義了一組核心能力。伺服器需公開支援的能力，並組合成「能力集合(Capability Set)」，以因應特定使用情境。

#### 醫院端應用程式 (User-Facing Applications)
若伺服端需支援醫院端應用程式，至少**建議應該(SHOULD)**支援下列能力集合；若為健保署認證系統，則**必須(SHALL)**支援兩者：
- [Patient Access for Standalone Apps](https://hl7.org/fhir/smart-app-launch/STU2.2/conformance.html#patient-access-for-standalone-apps){:target="_blank"}
- [Clinician Access for EHR Launch](https://hl7.org/fhir/smart-app-launch/STU2.2/conformance.html#clinician-access-for-standalone){:target="_blank"}

#### 後端服務 (Backend Services)
若伺服端需支援後端服務（例如醫院資訊系統與健保署平台之間的自動介接），則**必須(SHALL)**支援下列能力：
- `Client-confidential-asymmetric`
- `system/scopes`

### 存取權限檢驗 (Token Introspection)
TWPAS伺服端**必須(SHALL)**支援SMART App Launch IG中所定義的[存取權限檢驗 (Token Introspection)](https://hl7.org/fhir/smart-app-launch/STU2.2/token-introspection.html#token-introspection)。

### SMART存取範圍 (Scopes)

#### 語法

`<patient|user|system> / <fhir-resource>. <c | r | u | d |s> [?param=value]`

##### 存取範圍主體
- `patient` = 以病人身分存取病人的資料
- `user` = 以使用者（如醫師、藥師）身分情境存取病人資料（例如醫師在院內系統查詢病人癌藥申請狀態）
- `system` = 系統對系統之間存取資料（例如醫院資訊系統與健保署平台批次上傳事前審查申請）

##### 存取操作類型(CRUDS)
- `c` = 新增(create)
- `r` = 讀取(read)
- `u` = 更新(update)
- `d` = 刪除(delete)
- `s` = 查詢(search)

#### TWPAS存取範圍
##### 必須(SHALL)支援之存取範圍
 <table class="table table-condensed table-hover">
    <thead>
        <tr>
            <th>Resource型別</th>
            <th>存取範圍</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>Bundle</th>
            <th>system/Bundle.crs</th>
        </tr>
        <tr>
            <th>ClaimResponse</th>
            <th>system/ClaimResponse.rs</th>
        </tr>
     </tbody>
</table>

### 伺服端必須(SHALL)支援`/.well-known/smart-configuration`功能
除了在伺服端之能力聲明所定義的能力外，伺服端**必須(SHALL)**於[Well-Known Uniform Resource Identifiers (URIs)](https://hl7.org/fhir/smart-app-launch/STU2/conformance.html#using-well-known)的JSON檔中，描述其SMART能力。

#### 必要的SMART App Launch Metadata
依據SMART App Launch指引，以下為必要欄位：

- `issuer` (conditional)
- `jwks_uri` (conditional)
- `authorization_endpoint`
- `grant_types_supported`
- `token_endpoint`
- `capabilities`
- `code_challenge_methods_supported`

#### 建議應該要的SMART App Launch Metadata
- `scopes_supported`
- `introspection_endpoint`

#### `/.well-known/smart-configuration`範例
~~~http
HTTP/1.1 200 OK
Content-Type: application/json
~~~

~~~json
{
  "issuer": "https://www.nhi.gov.tw",
  "jwks_uri": "https://www.nhi.gov.tw/.well-known/jwks.json",
  "authorization_endpoint": "https://www.nhi.gov.tw/auth/authorize",
  "token_endpoint": "https://www.nhi.gov.tw/auth/token",
  "token_endpoint_auth_methods_supported": [
    "Client_secret_basic",
    "private_key_jwt"
  ],
  "grant_types_supported": [
    "authorization_code",
    "Client_credentials"
  ],
  "registration_endpoint": "https://www.nhi.gov.tw/auth/register",
  "scopes_supported": [
    "openid",
    "profile",
    "launch",
    "launch/patient",
    "offline_access",
    "system/Bundle.crs",
    "system/ClaimResponse.rs"
  ],
  "response_types_supported": ["code"],
  "management_endpoint": "https://www.nhi.gov.tw/user/manage",
  "revocation_endpoint": "https://www.nhi.gov.tw/user/revoke",
  "code_challenge_methods_supported": ["S256"],
  "capabilities": [
    "launch-ehr",
    "permission-patient",
    "permission-user",
    "permission-v2",
    "Client-public",
    "Client-confidential-symmetric",
    "Client-confidential-asymmetric",
    "context-ehr-patient",
    "sso-openid-connect"
  ]
}
~~~
