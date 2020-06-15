import Foundation
import Sword

extension BoatsSwift {
	public func postStats(id: Snowflake, serverCount: Int) -> Any {
		let url = URL(string: "https://discord.boats/api/bot/\(id.rawValue)")
		guard let requestUrl = url else { fatalError() }
		
		var request = URLRequest(url: requestUrl)
		request.httpMethod = "POST"
		request.setValue(self.apiKey, forHTTPHeaderField: "Authorization")
		let postString = "server_count=\(serverCount)";
		request.httpBody = postString.data(using: String.Encoding.utf8);
		let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
			if let error = error {
				print("[Boats.swift]|[ERROR]|[postStats] Stacktrace: \(error)")
				return
			}
			if let data = data, let dataString = String(data: data, encoding: .utf8) {
				print("[Boats.swift]|[SUCCESS]|[postStats] Posted")
				
			}
		}
		task.resume()
		return;
	}
}
