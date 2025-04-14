console.log("✅ histogram.js loaded");

document.addEventListener("DOMContentLoaded", () => {
  console.log("📸 Ready to generate histogram");

  const img = document.getElementById("grayscale-image");
  const canvas = document.createElement("canvas");
  const ctx = canvas.getContext("2d");

  if (!img) return;

  img.onload = function () {
    console.log("🖼️ Grayscale image loaded, drawing histogram...");
    canvas.width = img.naturalWidth;
    canvas.height = img.naturalHeight;

    ctx.drawImage(img, 0, 0);

    const imageData = ctx.getImageData(0, 0, canvas.width, canvas.height);
    const data = imageData.data;

    const histogram = new Array(256).fill(0);

    for (let i = 0; i < data.length; i += 4) {
      const brightness = data[i]; // R == G == B in grayscale
      histogram[brightness]++;
    }

    const chartCtx = document.getElementById("histogram").getContext("2d");

    new Chart(chartCtx, {
      type: "bar",
      data: {
        labels: Array.from({ length: 256 }, (_, i) => i),
        datasets: [
          {
            label: "Pixel Count",
            data: histogram,
            backgroundColor: "gray",
          },
        ],
      },
      options: {
        responsive: true,
        scales: {
          x: {
            title: {
              display: true,
              text: "Brightness (0-255)",
            },
            ticks: {
              maxTicksLimit: 16,
            },
          },
          y: {
            title: {
              display: true,
              text: "Pixel Count",
            },
          },
        },
      },
    });
  };
});
