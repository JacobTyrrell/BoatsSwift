import Just
extension BoatsSwift {
	public func getUserVoted(botid: String, userid: String) -> Any {
		var obj = Just.get("https://discord.boats/api/bot/\(botid)/voted?id=\(userid)")
		return obj.json!
	}
}
