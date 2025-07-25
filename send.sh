IP=$(kubectl get gateway/inference-gateway -o jsonpath='{.status.addresses[0].value}')

curl -i http://${IP}:${PORT}/v1/completions -H 'Content-Type: application/json' -d '{
"model": "food-review",
"prompt": "Write as if you were a critic: San Francisco",
"max_tokens": 100,
"temperature": 0
}'
