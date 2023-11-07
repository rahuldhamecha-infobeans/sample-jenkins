from codecarbon import EmissionsTracker
tracker = EmissionsTracker(save_to_file=True,project_name='Laravel')
tracker.start()