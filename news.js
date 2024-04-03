document.addEventListener("DOMContentLoaded", function () {
    const apiKey = 'cae04a1b72f04ba5ad379eb7690546d3';
    const newsSection = document.getElementById('newsSection');

    // Function to fetch EV car news
    function fetchEVNews() {
        // Fixed query for electric vehicle news
        const apiUrl = `https://newsapi.org/v2/everything?q=electric%20vehicle&sortBy=publishedAt&apiKey=${apiKey}`;

        fetch(apiUrl)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(news => {
                displayArticles(news.articles || []);
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    }

    function displayArticles(articles) {
        newsSection.innerHTML = ''; // Clear the news section
        if (articles.length === 0) {
            newsSection.innerHTML = '<h3>No News Found</h3>';
            return;
        }
        articles.forEach(article => {
            const articleElement = document.createElement('div');
            articleElement.className = 'News';
            articleElement.innerHTML = `
    <div class='news-img'>
        <img src="${article.urlToImage ? article.urlToImage : 'evnews.jpg'}">
    </div>
    <h1>${article.title}</h1>
    <p>${article.description?.substring(0, 100).concat('...')} <a href="${article.url}" target='_blank'>Read More</a></p>
    <div class='source'>
        <p>Author: ${article.author}</p>
        <p>Publisher: ${article.source.name}</p>
    </div>
`;

            newsSection.appendChild(articleElement);
        });
    }

    // Fetch EV car news on load
    fetchEVNews();
});
