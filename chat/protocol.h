#ifndef __CHAT_PROTOCOL_H__
#define __CHAT_PROTOCOL_H__

#include <memory>
#include <string>
#include <map>

namespace chat {

class ChatMessage {
public:
    typedef std::shared_ptr<ChatMessage> ptr;
    ChatMessage();

    static ChatMessage::ptr Create(const std::string& v);

    std::string get(const std::string& name);
    void set(const std::string& name, const std::string& v);

    std::string toString() const;
    
private:
    std::map<std::string, std::string> m_datas;
};

}

#endif