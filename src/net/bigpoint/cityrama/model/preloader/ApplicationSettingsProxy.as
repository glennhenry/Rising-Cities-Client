package net.bigpoint.cityrama.model.preloader
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.XMLLoader;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ApplicationSettingsProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ApplicationSettingsProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "ApplicationSettingsProxy";
      }
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _xmlLoader:XMLLoader;
      
      private var _devUserId:uint;
      
      private var _cvRuntimeLinksLoader:DataLoader;
      
      private var _cvComplete:Boolean = false;
      
      private var _settingsComplete:Boolean = false;
      
      private var _kill:Boolean;
      
      private var _cvXML:XML;
      
      public function ApplicationSettingsProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            super(param1,param2);
            if(_loc4_ || Boolean(param2))
            {
               this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
               if(!(_loc3_ && Boolean(param1)))
               {
                  this.load();
               }
            }
         }
      }
      
      private function load() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this._settingsComplete = true;
            if(_loc2_)
            {
               addr0028:
               this._cvRuntimeLinksLoader = new DataLoader(this._flashVarsProxy.cvXmlRuntimePath);
               if(_loc2_ || _loc1_)
               {
                  addr0049:
                  §§push(this._cvRuntimeLinksLoader);
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(LoaderEvent.COMPLETE);
                     if(_loc2_)
                     {
                        §§pop().addEventListener(§§pop(),this.onCompleteCV);
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr0084:
                           §§push(this._cvRuntimeLinksLoader);
                           if(_loc2_)
                           {
                              §§push(LoaderEvent.ERROR);
                              if(_loc2_)
                              {
                                 §§pop().addEventListener(§§pop(),this.onError);
                                 if(!_loc1_)
                                 {
                                    §§push(this._cvRuntimeLinksLoader);
                                    if(!_loc1_)
                                    {
                                       addr00be:
                                       §§pop().addEventListener(LoaderEvent.FAIL,this.onError);
                                       addr00b8:
                                       if(_loc2_)
                                       {
                                          addr00cf:
                                          this._cvRuntimeLinksLoader.load();
                                       }
                                       §§goto(addr00d3);
                                    }
                                    §§goto(addr00cf);
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr00be);
                           }
                           §§goto(addr00cf);
                        }
                        addr00d3:
                        return;
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr0084);
            }
            §§goto(addr0049);
         }
         §§goto(addr0028);
      }
      
      private function onCompleteCV(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._cvComplete = true;
            if(!(_loc3_ && _loc3_))
            {
               addr0028:
               this.onComplete(param1);
            }
            return;
         }
         §§goto(addr0028);
      }
      
      private function onCompleteSettings(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._settingsComplete = true;
            if(!_loc3_)
            {
               this.onComplete(param1);
            }
         }
      }
      
      private function onError(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(!this._kill)
            {
               if(_loc2_)
               {
                  §§goto(addr003a);
               }
            }
            §§goto(addr0052);
         }
         addr003a:
         sendNotification(ApplicationNotificationConstants.SETTINGS_LOADED);
         if(_loc2_ || _loc2_)
         {
            addr0052:
            this._kill = true;
         }
      }
      
      private function onComplete(param1:LoaderEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this._cvComplete);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop());
               if(_loc3_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!_loc2_)
                     {
                        addr004f:
                        §§pop();
                        if(!_loc2_)
                        {
                           §§push(this._settingsComplete);
                           if(!(_loc2_ && Boolean(param1)))
                           {
                              addr0066:
                              §§push(§§pop());
                              if(!_loc2_)
                              {
                                 §§goto(addr006c);
                              }
                           }
                           §§goto(addr0083);
                        }
                        §§goto(addr007f);
                     }
                  }
                  addr006c:
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr0083:
                        addr007f:
                        if(!this._kill)
                        {
                           if(!_loc2_)
                           {
                              addr008c:
                              sendNotification(ApplicationNotificationConstants.SETTINGS_LOADED);
                              if(!_loc2_)
                              {
                                 addr009c:
                                 this._cvXML = new XML(this._cvRuntimeLinksLoader.content);
                                 if(!_loc2_)
                                 {
                                    addr00b4:
                                    this._kill = true;
                                 }
                                 §§goto(addr00b9);
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr008c);
                  }
                  addr00b9:
                  return;
               }
               §§goto(addr004f);
            }
            §§goto(addr0066);
         }
         §§goto(addr007f);
      }
      
      public function get cvRuntimeLinksXML() : XML
      {
         return this._cvXML;
      }
   }
}

