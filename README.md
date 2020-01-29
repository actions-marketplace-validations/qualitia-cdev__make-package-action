# apply parameters action

Currently, under developing.

Make package YAML file.

## Inputs

### - aws-access-key

AWS access key

### - aws-secret-access-key

AWS secret access key

### - aws-region

AWS region

### - service-name

Your service name

### - target-dir

Workspace directory. Usually, it would be a directory where you cloned github repository.

### - package-file-path

Path where you wan to put a package YAML file.

A parameter YAML file path.

## Example usage

```
- uses: qualitia-cdev/package-file-action
  with:
    aws-access-key: ${{ secrets.AWS_ACCESS_KEY_ID }}
    aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    aws-region: ap-northeast-1
    service-name: hello-world!
    target-dir: infra/
    package-file-path: temp/
```
