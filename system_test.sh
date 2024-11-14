#!/bin/bash

# Color codes for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to run tests and capture output
run_test() {
    local module_name=$1
    local test_command=$2
    
    echo -e "${YELLOW}Testing ${module_name}:${NC}"
    
    # Capture both stdout and stderr
    output=$(eval "$test_command" 2>&1)
    
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓ ${module_name} tests passed successfully${NC}"
        return 0
    else
        echo -e "${RED}✗ ${module_name} tests failed${NC}"
        echo "$output"
        return 1
    fi
}

# Overall test results tracking
TOTAL_TESTS=0
PASSED_TESTS=0
FAILED_TESTS=0

# Test Server Module
cd server
TOTAL_TESTS=$((TOTAL_TESTS + 1))
if run_test "Server Module" "npm test"; then
    PASSED_TESTS=$((PASSED_TESTS + 1))
else
    FAILED_TESTS=$((FAILED_TESTS + 1))
fi
cd ..

# Test ClubWinKH Frontend
cd clubwinkh
TOTAL_TESTS=$((TOTAL_TESTS + 1))
if run_test "ClubWinKH Frontend" "npm run test"; then
    PASSED_TESTS=$((PASSED_TESTS + 1))
else
    FAILED_TESTS=$((FAILED_TESTS + 1))
fi
cd ..

# Test Admin Dashboard
cd clubwinkh-admin
TOTAL_TESTS=$((TOTAL_TESTS + 1))
if run_test "Admin Dashboard" "npm run test"; then
    PASSED_TESTS=$((PASSED_TESTS + 1))
else
    FAILED_TESTS=$((FAILED_TESTS + 1))
fi
cd ..

# Test Telegram Mini App
cd tg-miniapp
TOTAL_TESTS=$((TOTAL_TESTS + 1))
if run_test "Telegram Mini App" "npm run test"; then
    PASSED_TESTS=$((PASSED_TESTS + 1))
else
    FAILED_TESTS=$((FAILED_TESTS + 1))
fi
cd ..

# Detailed Inspection of Key Components
echo -e "\n${YELLOW}Detailed Component Inspection:${NC}"

# Server Routes Inspection
echo -e "\n${YELLOW}Inspecting Server Routes:${NC}"
cd server
for route in src/routes/*.js; do
    echo -e "${YELLOW}Analyzing route: ${route}${NC}"
    node -p "require('${route}')"
done
cd ..

# Frontend Store Inspection
echo -e "\n${YELLOW}Inspecting Frontend Stores:${NC}"
cd clubwinkh
for store in src/lib/stores/*.ts; do
    echo -e "${YELLOW}Analyzing store: ${store}${NC}"
    node -p "require('${store}')"
done
cd ..

# Final Test Summary
echo -e "\n${YELLOW}Test Summary:${NC}"
echo -e "Total Tests: ${TOTAL_TESTS}"
echo -e "${GREEN}Passed: ${PASSED_TESTS}${NC}"
echo -e "${RED}Failed: ${FAILED_TESTS}${NC}"

# Exit with non-zero status if any tests failed
if [ $FAILED_TESTS -gt 0 ]; then
    exit 1
fi
