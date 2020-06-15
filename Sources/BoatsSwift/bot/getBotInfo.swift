import Just
extension BoatsSwift {
	public func getBotInfo(botid: String) -> Any {
		var obj = Just.get("https://discord.boats/api/bot/\(botid)")
		return obj.json!
	}
}
