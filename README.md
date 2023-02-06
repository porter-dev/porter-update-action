# porter-update-action

This Github action updates an app deployment running on Porter.

Usage
---
```yaml
steps:
  - name: Checkout code
    uses: actions/checkout@v2.3.4
  - name: Update Porter deployment
    uses: porter-dev/porter-update-action@v0.1.0
    with:
      app: foo
      cluster: 1234
      project: 4321
      token: ${{ secrets.PORTER_TOKEN }}
      build_secrets: key1=val1,key2=val2  # Used internally by Porter
```

Configuration Options
---

The possible inputs are:

- `app`: (string, required): Name of application.
- `cluster`: (number, required): Cluster ID of Porter cluster.
- `dockerfile`: (string, optional): path to the Dockerfile used to build the image.
- `host`: (string, optional): Host URL of Porter instance. Set this if you use a self-hosted Porter instance.
- `namespace`: (string, optional): Namespace of the application (default "default")
- `path`: (string, optional): Path to build directory.
- `project`: (number, required): Project ID of Porter project.
- `tag` (string, optional): The specified tag to use (default "latest")
- `token`: (string, required): Token for Porter authentication.
- `build_secrets`: (string, optional): Comma-separated key-value pairs of secrets to be used in the build
