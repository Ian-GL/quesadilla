echo "Starting quesadilla deploy"

echo "Make builds folder"
mkdir -p builds
cd builds

echo "Installing hex..."
mix local.rebar --force
mix local.hex --force

echo "Updating mix deps..."
mix clean --deps
mix deps.get --only prod

echo "Setting up secrets..."
export SECRET_KEY_BASE=REALLY_LONG_SECRET

echo "Compiling..."
MIX_ENV=prod mix compile

# Install / update  JavaScript dependencies
npm install --prefix assets

# Compile assets
npm run deploy --prefix assets
MIX_ENV=prod mix phx.digest

echo "Releasing..."
MIX_ENV=prod mix release --overwrite