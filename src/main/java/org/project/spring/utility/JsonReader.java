package org.project.spring.utility;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;

import org.json.JSONException;
import org.json.JSONObject;

public class JsonReader {

	private static String readAll(Reader rd) throws IOException {
		StringBuilder sb = new StringBuilder();
		int cp;
		while ((cp = rd.read()) != -1) {
			sb.append((char) cp);
		}
		return sb.toString();
	}

	public static JSONObject readJsonFromUrl(String url) throws IOException, JSONException {
		InputStream is = new URL(url).openStream();
		try {
			BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
			String jsonText = readAll(rd);
			JSONObject json = new JSONObject(jsonText);
			return json;
		} finally {
			is.close();
		}
	}

	/*public static List<News> getData(String[] links, String category) throws IOException, JSONException {

		List<News> news = new ArrayList<>();

		for (String link : links) {
			JSONObject json = null;
			if (MyConstatnts.NEWSSTATICVALUE == 1) {
				json = readJsonFromUrl(link + MyConstatnts.newsAPIkey1);
			} else {
				json = readJsonFromUrl(link + MyConstatnts.newsAPIkey2);
			}
			JSONArray article = json.getJSONArray("articles");

			for (int i = 0; i < article.length(); i++) {

				JSONObject jsonObject = article.getJSONObject(i);
				Object object = jsonObject.get("author");
				News news2 = new News();
				if (object != JSONObject.NULL)
					news2.setAuthor(jsonObject.get("author").toString());

				object = jsonObject.get("publishedAt");

				if ((object != JSONObject.NULL)) {
					String date = jsonObject.get("publishedAt").toString();
					if (date != null) {
						news2.setDate(date.substring(0, 10));
						news2.setTime(date.substring(12, 19));
					}

				}

				object = jsonObject.get("description");

				if (object != JSONObject.NULL)
					news2.setDescription(jsonObject.get("description").toString());

				news2.setStatus("Active");

				object = jsonObject.get("title");

				if (object != JSONObject.NULL)
					news2.setTitle(jsonObject.get("title").toString());

				object = jsonObject.get("url");

				if (object != JSONObject.NULL)
					news2.setUrl(jsonObject.get("url").toString());

				object = jsonObject.get("urlToImage");

				if (object != JSONObject.NULL)
					news2.setImage(jsonObject.get("urlToImage").toString());
				else {
					continue;
				}

				JSONObject source = (JSONObject) jsonObject.get("source");
				if (source != JSONObject.NULL) {
					object = source.get("name");
					if (object != JSONObject.NULL)
						news2.setSource(object.toString());
				}

				news2.setCategory(category);
				news.add(news2);

			}
		}

		return news;

	}*/

}
