// qnetworkrequest.sip generated by MetaSIP on Fri Mar 14 14:38:41 2014
//
// This file is part of the QtNetwork Python extension module.
//
// Copyright (c) 2014 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQt5.
// 
// This file may be used under the terms of the GNU General Public License
// version 3.0 as published by the Free Software Foundation and appearing in
// the file LICENSE included in the packaging of this file.  Please review the
// following information to ensure the GNU General Public License version 3.0
// requirements will be met: http://www.gnu.org/copyleft/gpl.html.
// 
// If you do not wish to use this file under the terms of the GPL version 3.0
// then you may purchase a commercial license.  For more information contact
// info@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


class QNetworkRequest
{
%TypeHeaderCode
#include <qnetworkrequest.h>
%End

public:
    enum KnownHeaders
    {
        ContentTypeHeader,
        ContentLengthHeader,
        LocationHeader,
        LastModifiedHeader,
        CookieHeader,
        SetCookieHeader,
        ContentDispositionHeader,
        UserAgentHeader,
        ServerHeader,
    };

    enum Attribute
    {
        HttpStatusCodeAttribute,
        HttpReasonPhraseAttribute,
        RedirectionTargetAttribute,
        ConnectionEncryptedAttribute,
        CacheLoadControlAttribute,
        CacheSaveControlAttribute,
        SourceIsFromCacheAttribute,
        DoNotBufferUploadDataAttribute,
        HttpPipeliningAllowedAttribute,
        HttpPipeliningWasUsedAttribute,
        CustomVerbAttribute,
        CookieLoadControlAttribute,
        AuthenticationReuseAttribute,
        CookieSaveControlAttribute,
        BackgroundRequestAttribute,
        User,
        UserMax,
    };

    enum CacheLoadControl
    {
        AlwaysNetwork,
        PreferNetwork,
        PreferCache,
        AlwaysCache,
    };

    enum LoadControl
    {
        Automatic,
        Manual,
    };

    enum Priority
    {
        HighPriority,
        NormalPriority,
        LowPriority,
    };

    explicit QNetworkRequest(const QUrl &url = QUrl());
    QNetworkRequest(const QNetworkRequest &other);
    ~QNetworkRequest();
    QUrl url() const;
    void setUrl(const QUrl &url);
    QVariant header(QNetworkRequest::KnownHeaders header) const;
    void setHeader(QNetworkRequest::KnownHeaders header, const QVariant &value);
    bool hasRawHeader(const QByteArray &headerName) const;
    QList<QByteArray> rawHeaderList() const;
    QByteArray rawHeader(const QByteArray &headerName) const;
    void setRawHeader(const QByteArray &headerName, const QByteArray &value);
    QVariant attribute(QNetworkRequest::Attribute code, const QVariant &defaultValue /DocValue="None"/ = QVariant()) const;
    void setAttribute(QNetworkRequest::Attribute code, const QVariant &value);
%If (PyQt_SSL)
    QSslConfiguration sslConfiguration() const;
%End
%If (PyQt_SSL)
    void setSslConfiguration(const QSslConfiguration &configuration);
%End
    bool operator==(const QNetworkRequest &other) const;
    bool operator!=(const QNetworkRequest &other) const;
    void setOriginatingObject(QObject *object /KeepReference/);
    QObject *originatingObject() const;
    QNetworkRequest::Priority priority() const;
    void setPriority(QNetworkRequest::Priority priority);
    void swap(QNetworkRequest &other);
};
