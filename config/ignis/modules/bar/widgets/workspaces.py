from ignis.widgets import Widget
from ignis.services.hyprland import HyprlandService, HyprlandWorkspace

hyprland = HyprlandService.get_default()


class WorkspaceButton(Widget.Button):
    def __init__(self, workspace: HyprlandWorkspace) -> None:
        super().__init__(
            css_classes=["workspace", "unset"],
            on_click=lambda x: workspace.switch_to(),
            halign="start",
            valign="center",
        )
        if workspace.id == hyprland.active_workspace.id:
            self.add_css_class("active")


def scroll_workspaces(direction: str, monitor_workspaces: list) -> None:
    current = hyprland.active_workspace.id
    if direction == "up":
        target = current - 1
        if target in monitor_workspaces: 
            hyprland.switch_to_workspace(target)
    else:
        target = current + 1
        if target in monitor_workspaces and target <= 10:
            hyprland.switch_to_workspace(target)


class Workspaces(Widget.Box):
    def __init__(self, monitor_id: int):

        self.monitor_workspaces = range(1, 6) if monitor_id == 1 else range (6, 11)

        if hyprland.is_available:
            child = [
                Widget.EventBox(
                    on_scroll_up=lambda x: scroll_workspaces("up", self.monitor_workspaces),
                    on_scroll_down=lambda x: scroll_workspaces("down", self.monitor_workspaces),
                    css_classes=["workspaces"],
                    child=hyprland.bind_many(
                        ["workspaces", "active_workspace"],
                        transform=lambda workspaces, *_: [
                            WorkspaceButton(i) for i in workspaces
                            if i.id in self.monitor_workspaces
                        ],
                    ),
                )
            ]
        else:
            child = []
        super().__init__(child=child)
