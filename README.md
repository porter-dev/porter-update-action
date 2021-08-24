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
```

Configuration Options
---

The possible inputs are:

- `app`: (string, required): Name of application.
- `cluster`: (number, required): Cluster ID of Porter cluster.
- `host`: (string, optional): Host URL of Porter instance. Set this if you use a self-hosted Porter instance.
- `namespace`: (string, optional): Namespace of the application (default "default")
- `project`: (number, required): Project ID of Porter project.
- `tag` (string, optional): The specified tag to use (default "latest")
- `token`: (string, required): Token for Porter authentication.
