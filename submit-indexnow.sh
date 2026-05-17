#!/bin/bash
# Submit all URLs to IndexNow (Bing, Yandex, Seznam)
# Get your API key from https://www.bing.com/indexnow/getapikey

API_KEY="ed88461c726249a49b46e5f88994f267"
HOST="blavff.sk"

URLS=(
  "https://blavff.sk/"
  "https://blavff.sk/about.html"
  "https://blavff.sk/schedule.html"
  "https://blavff.sk/prednasky.html"
  "https://blavff.sk/competitions.html"
  "https://blavff.sk/competition-rules.html"
  "https://blavff.sk/artist-alley.html"
  "https://blavff.sk/guests.html"
  "https://blavff.sk/volunteer.html"
  "https://blavff.sk/register.html"
  "https://blavff.sk/venue.html"
  "https://blavff.sk/partners.html"
  "https://blavff.sk/press-kit.html"
  "https://blavff.sk/news.html"
  "https://blavff.sk/rules.html"
  "https://blavff.sk/tos.html"
  "https://blavff.sk/privacy.html"
  "https://blavff.sk/en/"
  "https://blavff.sk/en/about.html"
  "https://blavff.sk/en/schedule.html"
  "https://blavff.sk/en/prednasky.html"
  "https://blavff.sk/en/competitions.html"
  "https://blavff.sk/en/competition-rules.html"
  "https://blavff.sk/en/artist-alley.html"
  "https://blavff.sk/en/guests.html"
  "https://blavff.sk/en/volunteer.html"
  "https://blavff.sk/en/register.html"
  "https://blavff.sk/en/venue.html"
  "https://blavff.sk/en/partners.html"
  "https://blavff.sk/en/press-kit.html"
  "https://blavff.sk/en/news.html"
  "https://blavff.sk/en/rules.html"
  "https://blavff.sk/en/tos.html"
  "https://blavff.sk/en/privacy.html"
)

# Submit to Bing IndexNow
curl -s -X POST "https://www.bing.com/indexnow" \
  -H "Content-Type: application/json" \
  -d "{\"host\":\"$HOST\",\"key\":\"$API_KEY\",\"keyLocation\":\"https://$HOST/$API_KEY.txt\",\"urlList\":$(printf '%s\n' "${URLS[@]}" | jq -R . | jq -s .)}"

echo ""
echo "Submitted ${#URLS[@]} URLs to IndexNow"
