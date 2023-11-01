from codecarbon import EmissionsTracker
tracker = EmissionsTracker(project_name="test_demo", measure_power_secs=5,save_to_file=True)
tracker.start()