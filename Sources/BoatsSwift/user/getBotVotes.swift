import Just
extension BoatsSwift {
	public func getUserVoted(botid: UInt64, userid: UInt64) -> Any {
		var obj = Just.get("https://discord.boats/api/bot/\(botid)/voted?id=\(userid)")
		if obj == nil {
			return "Error: Bot or user wasn't found"
		}
		return obj.json!
	}
}
