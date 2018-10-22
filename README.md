# GitHub Action for Firebase CLI

The GitHub Deployer for [Firebase](https://firebase.google.com/) task wraps the [Firebase CLI](https://github.com/firebase/firebase-tools) to enable common Firebase commands.

## Usage

```
workflow "Deploy to Firebase" {
  on = "push"
  resolves = ["deploy"]
}

action "deploy" {
  uses = "./.github/actions/firebase"
  secrets = [
    "FIREBASE_TOKEN",
  ]
}
```

### Secrets

* `FIREBASE_TOKEN` - **Required**. The token to use for authentication with the Firebase CLI. This requires a token to be created locally first using `firebase login:ci` ([more info](https://github.com/firebase/firebase-tools#using-with-ci-systems))

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

Container images built with this project include third party materials. See [THIRD_PARTY_NOTICE.md](THIRD_PARTY_NOTICE.md) for details.
