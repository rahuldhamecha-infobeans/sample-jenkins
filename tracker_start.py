from codecarbon import EmissionsTracker
tracker = EmissionsTracker(country_iso_code="IND",save_to_file=True)
tracker.start()