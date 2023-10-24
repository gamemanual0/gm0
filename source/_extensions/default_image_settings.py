from typing import Any, Dict

from docutils import nodes

from sphinx.transforms.post_transforms import SphinxPostTransform
from sphinx.application import Sphinx


class DefaultImageSettingsTransform(SphinxPostTransform):
    """
    Set a default image width for images which do not have a width attribute
    manually set. Also center images which are not centered.
    """

    default_priority = 100  # chosen arbitrarily

    def run(self, **kwargs: Any) -> None:
        if self.app.tags.has("html"):
            width = self.app.config["default_image_width_html"]
        elif self.app.tags.has("latex"):
            width = self.app.config["default_image_width_latex"]
        else:
            return

        if not width:
            raise ValueError(
                "default_image_width_html/default_image_width_latex must be set!"
            )

        for node in self.document.findall(nodes.image):
            if "width" not in node.attributes:
                node.attributes["width"] = width

            if (
                self.app.config["default_image_centered"]
                and "align" not in node.attributes
            ):
                node.attributes["align"] = "center"


def setup(app: Sphinx) -> Dict[str, Any]:
    app.add_config_value("default_image_width_html", None, True)
    app.add_config_value("default_image_width_latex", None, True)
    app.add_config_value("default_image_centered", False, True)
    app.add_post_transform(DefaultImageSettingsTransform)

    return {
        "parallel_read_safe": True,
        "parallel_write_safe": True,
    }
