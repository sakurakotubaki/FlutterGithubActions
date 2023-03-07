name: Check and test the source code
on:
 pull_request:
  branches:
   - main
jobs:
 test:
  name: Check the source code
  runs-on: ubuntu-latest
  steps:
   - uses: actions/checkout@v3
   - uses: subosito/flutter-action@v2.3.0
     with:
      flutter-version: '3.3.10'
   - name: Install packages
     run: flutter pub get
   - name: Linter
     run: flutter analyze
   - name: Test
     run: flutter test