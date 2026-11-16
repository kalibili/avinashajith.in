# avinashajith.in

Source for [avinashajith.in](https://avinashajith.in) — my personal site.

A single static `index.html`, no build step. Served by Caddy's
`file_server` on a Hetzner VM with automatic HTTPS.

## Layout

- `site/index.html` — the whole site (HTML + inline CSS)
- `deploy.sh` — rsyncs `site/` to the server; Caddy serves the new files
  immediately, no restart needed

## Deploy

```sh
./deploy.sh
```
