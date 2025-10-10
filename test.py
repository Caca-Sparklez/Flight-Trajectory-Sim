
import os
import gspread
from google.oauth2.service_account import Credentials
from dotenv import load_dotenv

# Load .env file
load_dotenv()

# Get environment variables
SERVICE_KEY = os.getenv("GOOGLE_APPLICATION_CREDENTIALS")
SHEET_ID = os.getenv("SHEET_ID")

# Scopes needed for Sheets + Drive
SCOPES = [
    "https://www.googleapis.com/auth/spreadsheets",
    "https://www.googleapis.com/auth/drive"
]

# Authenticate with service account
creds = Credentials.from_service_account_file(SERVICE_KEY, scopes=SCOPES)
gc = gspread.authorize(creds)

# Open spreadsheet by ID
sh = gc.open_by_key(SHEET_ID)
ws = sh.sheet1  # First tab ("Sheet1")
