package net.bigpoint.cityrama.model.developertools
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import flash.events.Event;
   import net.bigpoint.cityrama.MainApplication;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class DeveloperSettingsProxy extends Proxy
   {
      
      public static const NAME:String = "DeveloperSettingsProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && DeveloperSettingsProxy))
      {
         NAME = "DeveloperSettingsProxy";
      }
      
      private var _application:MainApplication;
      
      private var _xmlLoader:DataLoader;
      
      private var _devUserId:Number;
      
      private var _devServer:String;
      
      private var _devPort:Number;
      
      private var _language:String;
      
      public function DeveloperSettingsProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._xmlLoader = new DataLoader("xml/settings.xml");
            if(_loc2_ || Boolean(this))
            {
               §§push(this._xmlLoader);
               if(_loc2_ || _loc2_)
               {
                  §§push(LoaderEvent.COMPLETE);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§pop().addEventListener(§§pop(),this.onComplete);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(this._xmlLoader);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr0096);
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr00ab);
                  }
                  addr0096:
                  §§pop().addEventListener(LoaderEvent.IO_ERROR,this.onError);
                  if(!(_loc1_ && _loc2_))
                  {
                     addr00af:
                     this._xmlLoader.load();
                     addr00ab:
                  }
                  return;
               }
               §§goto(addr00af);
            }
         }
         §§goto(addr00ab);
      }
      
      private function onError(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            facade.removeProxy(this.getProxyName());
            if(_loc2_ || _loc2_)
            {
               this.proceed();
            }
         }
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         var event:LoaderEvent;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         event = param1;
         try
         {
            this.parseConfigXML(new XML(this._xmlLoader.content));
         }
         catch(e:Error)
         {
            if(!_loc5_)
            {
               proceed();
            }
         }
      }
      
      private function parseConfigXML(param1:XML) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1.language[0].toString() != "")
            {
               if(_loc2_)
               {
                  this._language = param1.language[0].toString();
                  if(!_loc3_)
                  {
                     addr0046:
                     §§push(Boolean(param1.uid[0]));
                     if(_loc2_ || Boolean(param1))
                     {
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        §§push(_temp_2);
                        if(_loc2_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§pop();
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(param1.uid[0].toString() == "");
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc3_ && Boolean(param1)))
                                       {
                                          addr00af:
                                          if(§§pop())
                                          {
                                             if(_loc2_ || Boolean(param1))
                                             {
                                                this._devUserId = Number(param1.uid[0].toString());
                                                if(!_loc3_)
                                                {
                                                   addr00dd:
                                                   §§push(Boolean(param1.server[0]));
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      var _temp_9:* = §§pop();
                                                      §§push(_temp_9);
                                                      §§push(_temp_9);
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         addr010e:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§pop();
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(param1.server[0].toString() == "");
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr0142:
                                                                     §§push(!§§pop());
                                                                     if(_loc2_)
                                                                     {
                                                                        addr0148:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc2_ || Boolean(param1))
                                                                           {
                                                                              addr0159:
                                                                              this._devServer = String(param1.server[0].toString());
                                                                              if(_loc2_ || Boolean(this))
                                                                              {
                                                                                 addr017d:
                                                                                 §§push(Boolean(param1.port[0]));
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr018d:
                                                                                    var _temp_15:* = §§pop();
                                                                                    addr018e:
                                                                                    §§push(_temp_15);
                                                                                    if(_temp_15)
                                                                                    {
                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                       {
                                                                                          addr019f:
                                                                                          §§pop();
                                                                                          if(_loc2_ || Boolean(this))
                                                                                          {
                                                                                             addr01da:
                                                                                             addr01ad:
                                                                                             §§push(param1.port[0].toString() == "");
                                                                                             if(_loc2_ || Boolean(this))
                                                                                             {
                                                                                                addr01d9:
                                                                                                §§push(!§§pop());
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc2_ || Boolean(this))
                                                                                                {
                                                                                                   §§goto(addr01eb);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0207);
                                                                                       }
                                                                                       §§goto(addr01d9);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01da);
                                                                              }
                                                                           }
                                                                           §§goto(addr01ad);
                                                                        }
                                                                        §§goto(addr017d);
                                                                     }
                                                                     §§goto(addr019f);
                                                                  }
                                                                  §§goto(addr0148);
                                                               }
                                                               §§goto(addr01eb);
                                                            }
                                                            §§goto(addr0142);
                                                         }
                                                         §§goto(addr0148);
                                                      }
                                                      §§goto(addr018e);
                                                   }
                                                   §§goto(addr018d);
                                                }
                                             }
                                             §§goto(addr0207);
                                          }
                                          §§goto(addr00dd);
                                       }
                                    }
                                    §§goto(addr019f);
                                 }
                                 §§goto(addr017d);
                              }
                              §§goto(addr019f);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr010e);
                     }
                     §§goto(addr01da);
                  }
                  §§goto(addr0159);
               }
               addr01eb:
               this._devPort = Number(param1.port[0].toString());
               if(_loc2_)
               {
                  addr0207:
                  this.proceed();
               }
               return;
            }
            §§goto(addr0046);
         }
         §§goto(addr017d);
      }
      
      private function proceed() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.STARTUP,this._application);
         }
      }
      
      public function set application(param1:MainApplication) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._application = param1;
         }
      }
      
      public function get devUserId() : Number
      {
         return this._devUserId;
      }
      
      public function get language() : String
      {
         return this._language;
      }
      
      public function get devPort() : Number
      {
         return this._devPort;
      }
      
      public function get devServer() : String
      {
         return this._devServer;
      }
   }
}

