import Just
extension BoatsSwift {
	public func getUser(userid: UInt64) -> Any {
		var obj = Just.get("https://discord.boats/api/user/\(userid)")
		if obj == nil {
			return "Error: Bot or user wasn't found"
		}
		return obj.json!
	}
}
