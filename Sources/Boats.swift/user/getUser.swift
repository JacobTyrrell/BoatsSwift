import Foundation

extension BoatsSwift {
	public func getUser(userid: String) {
		let url = URL(string: "https://discord.boats/api/user/\(userid)")
		let task = URLSession.shared.dataTask(with: url!) { data, response, error in
			guard error == nil else {
				print("[Boats.swift]|[ERROR]|[getUser] Stacktrace: \(error!)")
				return
			}
			guard let data = data else {
				print("[Boats.swift]|[WARN]|[getUser] There wasn't any data")
				return
			}
			let json = try! JSONSerialization.jsonObject(with: data, options: [])
			return json
		}
		task.resume()
	}
}

