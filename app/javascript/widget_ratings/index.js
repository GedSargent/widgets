const updateUIWithRating = (document, rating) => {
  document.querySelectorAll("[data-rating-present]").forEach((element) => {
    element.style.display = "block";
  })

  document.querySelectorAll("[data-no-rating-present]").forEach((element) => {
    element.style.display = "none";
  })

  console.log({rating})

  document.querySelectorAll("[data-rating-label]").forEach((element) => {
    element.innerText = `${rating}`;
  })
}

const start = (window) => {
  const document = window.document;
  window.addEventListener("turbo:load", () => {
    document.querySelectorAll(
      "button[data-rating]"
    ).forEach((element) => {
        element.onclick = (event) => {
          const rating = element.innerText;
          updateUIWithRating(document, rating);
        }
      })
  })
}

export const WidgetRatings = {
  start: start,
}