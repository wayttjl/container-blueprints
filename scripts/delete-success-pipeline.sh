kubectl -n $1 delete pipelinerun $(kubectl -n $1 get pipelinerun -o jsonpath='{range .items[?(@.status.conditions[*].status=="True")]}{.metadata.name}{"\n"}{end}')