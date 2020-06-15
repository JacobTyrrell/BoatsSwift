import Just
extension BoatsSwift {
	public func getBotInfo(botid: UInt64) -> Any {
		var obj = Just.get("https://discord.boats/api/bot/\(botid)")
		if obj == nil {
			return "Error: Bot wasn't found"
		}
		return obj.json!
	}
}
