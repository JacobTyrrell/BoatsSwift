import Just

extension BoatsSwift {
	
	let myJustDefaults = JustSessionDefaults(
		JSONReadingOptions: .mutableContainers,
		JSONWritingOptions: .prettyPrinted,
		headers:  ["Authorization": self.apiKey], request
	)
	
	public func postStats(id: String, serverCount: Int) {
		let jhttp = JustOf<HTTP>(defaults: myJustDefaults)
		jhttp.post("https://discord.boats/api/bot/\(id)", json:["server_count": serverCount])
		return
}
