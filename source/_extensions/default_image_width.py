from typing import Any, Dict

from docutils import nodes

from sphinx.transforms.post_transforms import SphinxPostTransform
from sphinx.application import Sphinx


class DefaultImageWidthTransform(SphinxPostTransform):
    """
    Set a default image width for images which do not have a width attribute
    manually set
    """

    default_priority = 100  # chosen arbitrarily

    def run(self, **kwargs: Any) -> None:
        width = self.app.config["default_image_width"]
        if not width:
            raise ValueError("default_image_width must be set!")

        for node in self.document.findall(nodes.image):
            if "width" not in node.attributes:
                node.attributes["width"] = self.app.config["default_image_width"]


def setup(app: Sphinx) -> Dict[str, Any]:
    app.add_config_value("default_image_width", None, True)
    app.add_post_transform(DefaultImageWidthTransform)

    return {
        "parallel_read_safe": True,
        "parallel_write_safe": True,
    }
