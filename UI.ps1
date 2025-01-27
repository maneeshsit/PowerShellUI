[void][reflection.assembly]::LoadWithPartialName("system.windows.forms")
$form.text=new-object windows.forms.form
$form.text="My first form"
$button=new-object windows.form.button
$button.text="push me!"
$button.dock="fill"
$button.add_click({$form.close()})
$form.controls.add($button)
$form.add_shown({$form.activate()})
$form.showdialog()