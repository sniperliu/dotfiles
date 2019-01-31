function aws-profile --description 'Switch aws profile'
    set -gx AWS_ACCESS_KEY_ID (aws configure get --profile $argv aws_access_key_id)
    set -gx AWS_SECRET_ACCESS_KEY (aws configure get --profile $argv aws_secret_access_key)
    set -gx AWS_SECRET_KEY (aws configure get --profile $argv aws_secret_access_key)
    set -gx AWS_DEFAULT_REGION (aws configure get --profile $argv region)
    echo Profile switched to $argv
    echo  AWS_DEFAULT_REGION $AWS_DEFAULT_REGION
end
