function init -a path --on-event init_pod
  if not available pod
    echo "Please install 'pod' first!" ; return 1
  end
end