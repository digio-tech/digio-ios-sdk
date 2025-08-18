# digio-ios-sdk

## Create SDK configuration

>Step 1: Import the Digio module 

```sh
import DigioEsignSDK

```

>Step 2: Configure Digio instance

```sh
         DigioBuilder()
                .withController(viewController: self) /**  Mandatory:- pass your view controller here **/
                .setLogo(logo: "")   /**  Optional:- your logo link **/
                .setDocumentId(documentId: "docId") /** Mandatory:- Unique MandateId /Document ID  **/
                .setIdentifier(identifier: "email/phone")  /** Mandatory identifier **/
                .setTokenId(tokenId: "")   /** Optional: token id to bypass first factor authenticatio**/
                .setEnvironment(environment: DigioEnvironment.SANDBOX) /** Mandatory: SANDBOX / PRODUCTION **/
                .setServiceMode(serviceMode: DigioServiceMode.OTP) /** Mandatory **/
                .setAdditionalParams(additionalParams: additionalParam) /** optional use for eNach/mandate only **/
                .build()
```



### Handle SDK response
- Extend DigioEsignDelegate, add onDigioResponseSuccess & onDigioResponseFailure protocol stubs

```sh
extension YourViewController : DigioEsignDelegate {
      func onDigioResponseSuccess(response: String) {
          print("Success \(response)")
       }
 
      func onDigioResponseFailure(response: String) {
          print("Failure \(response)")
      }
       func onGatewayEvent(event: String) {
        print("Gateway Funnel Event \(event)")
    }
  }

```

## Debug Symbols (Optional)

If you want human-readable crash logs from DigioEsignSDK, please upload the provided dSYM file to your crash reporting service (e.g., Firebase Crashlytics, Sentry).

- [Download DigioEsignSDK_dSYMs.zip](https://github.com/digio-tech/digio-ios-sdk/releases/latest/download/DigioEsignSDK_dSYMs.zip)

**Note:** This is optional. Your app will work fine without it, but crash reports may contain obfuscated stack traces if dSYM is not uploaded.

