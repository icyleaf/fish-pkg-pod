function init --on-event init_pod
  if not available pod
    echo "Please install 'pod' first!"
  end
end
