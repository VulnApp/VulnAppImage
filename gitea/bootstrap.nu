helm install gitea-postgres bitnami/postgresql
helm install gitea-redis bitnami/redis

let POSTGRES_PASSWORD = (kubectl get secret --namespace gitea gitea-postgres-postgresql -o jsonpath="{.data.postgres-password}" | decode base64)
let REDIS_PASSWORD = (kubectl get secret --namespace gitea gitea-redis -o jsonpath="{.data.redis-password}" | decode base64)

