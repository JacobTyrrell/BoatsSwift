import Foundation

extension BoatsSwift {
	public func getBotInfo(botid: String) {
		let url = URL(string: "https://discord.boats/api/bot/\(botid)/")
		let task = URLSession.shared.dataTask(with: url!) { data, response, error in
			guard error == nil else {
				print("[Boats.swift]|[ERROR]|[getBotInfo] Stacktrace: \(error!)")
				return
			}
			guard let data = data else {
				print("[Boats.swift]|[WARN]|[getBotInfo] Stacktrace: There wasn't any data")
				return
			}
			let json = try! JSONSerialization.jsonObject(with: data, options: [])
		}
		task.resume()
		return json
	}
}
