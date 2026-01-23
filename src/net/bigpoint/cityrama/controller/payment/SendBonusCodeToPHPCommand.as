package net.bigpoint.cityrama.controller.payment
{
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class SendBonusCodeToPHPCommand extends SimpleCommand implements ICommand
   {
      
      private var _openPopupOnFail:Boolean = true;
      
      public function SendBonusCodeToPHPCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:URLLoader = null;
         var _loc5_:URLRequest = null;
         var _loc6_:URLVariables = null;
         var _loc2_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         var _loc3_:String = param1.getBody().bonus as String;
         if(!_loc8_)
         {
            this._openPopupOnFail = param1.getBody().popup as Boolean;
            if(!_loc8_)
            {
               §§push(_loc3_);
               if(_loc7_ || Boolean(_loc3_))
               {
                  §§push("");
                  if(!(_loc8_ && Boolean(this)))
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc7_)
                     {
                        §§push(!§§pop());
                        if(!_loc8_)
                        {
                           var _temp_3:* = §§pop();
                           §§push(_temp_3);
                           §§push(_temp_3);
                           if(!_loc8_)
                           {
                              if(§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§goto(addr009e);
                                 }
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr00bd);
                     }
                     addr009e:
                     §§pop();
                     if(_loc7_)
                     {
                        §§push(_loc3_);
                        if(_loc7_)
                        {
                           addr00af:
                           §§push(§§pop() == " ");
                           if(_loc7_)
                           {
                              §§push(!§§pop());
                              if(!_loc8_)
                              {
                                 §§goto(addr00bd);
                              }
                              §§goto(addr00fd);
                           }
                           addr00bd:
                           var _temp_4:* = §§pop();
                           addr00be:
                           §§push(_temp_4);
                           if(_temp_4)
                           {
                              if(_loc7_ || Boolean(this))
                              {
                                 §§pop();
                                 if(_loc7_ || Boolean(param1))
                                 {
                                    §§goto(addr00fe);
                                 }
                                 §§goto(addr0102);
                              }
                           }
                           addr00fe:
                           §§goto(addr00ed);
                        }
                        addr00ed:
                     }
                     §§goto(addr00ec);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr00ed);
            }
         }
         addr00ec:
         §§push(_loc3_ == null);
         if(!(_loc8_ && Boolean(_loc2_)))
         {
            addr00fd:
            §§push(!§§pop());
         }
         if(§§pop())
         {
            addr0102:
            _loc4_ = new URLLoader();
            _loc5_ = new URLRequest(_loc2_.evoucherUrl);
            if(!(_loc8_ && Boolean(this)))
            {
               _loc4_.addEventListener(Event.COMPLETE,this.handleResponse);
               if(!(_loc8_ && Boolean(_loc3_)))
               {
                  addr014a:
                  _loc5_.method = URLRequestMethod.POST;
               }
               _loc6_ = new URLVariables();
               _loc6_.evoucher = _loc3_;
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  _loc6_.book = 1;
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     addr0198:
                     _loc5_.data = _loc6_;
                     if(!(_loc8_ && Boolean(this)))
                     {
                        _loc4_.load(_loc5_);
                     }
                  }
                  §§goto(addr01b4);
               }
               §§goto(addr0198);
            }
            §§goto(addr014a);
         }
         addr01b4:
      }
      
      private function handleResponse(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:URLRequest = null;
         var _loc2_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         var _loc3_:URLLoader = param1.target as URLLoader;
         if(_loc9_)
         {
            if(_loc3_.data != "")
            {
               addr0056:
               _loc4_ = JSON.parse(_loc3_.data);
               if(_loc4_.success)
               {
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     if(_loc4_.paymentURL)
                     {
                        if(!(_loc8_ && Boolean(this)))
                        {
                           _loc5_ = _loc4_.paymentURL;
                           if(!(_loc8_ && Boolean(_loc2_)))
                           {
                              addr00b9:
                              _loc6_ = new URLRequest(_loc5_);
                              if(_loc9_ || Boolean(this))
                              {
                                 navigateToURL(_loc6_,"_blank");
                                 if(!_loc8_)
                                 {
                                    if(_loc2_.isChrome)
                                    {
                                       if(!(_loc8_ && Boolean(param1)))
                                       {
                                          addr00fe:
                                          ExternalInterface.call("openPayment");
                                       }
                                    }
                                    else
                                    {
                                       _loc7_ = new URLRequest(_loc2_.paymentURL);
                                       if(!_loc8_)
                                       {
                                          navigateToURL(_loc7_,"_newtab");
                                       }
                                    }
                                 }
                                 §§goto(addr0177);
                              }
                              §§goto(addr00fe);
                           }
                        }
                        else
                        {
                           addr014f:
                           sendNotification(MiniLayerConstants.OPEN_MINI_EVOUCHER_FAILURE,_loc4_);
                           if(_loc9_)
                           {
                           }
                        }
                     }
                     §§goto(addr0177);
                  }
                  §§goto(addr00b9);
               }
               else if(this._openPopupOnFail)
               {
                  if(!_loc8_)
                  {
                     §§goto(addr014f);
                  }
               }
               else
               {
                  sendNotification(ApplicationNotificationConstants.BONUS_CODE_FAIL,_loc4_.message);
               }
            }
            addr0177:
            return;
         }
         §§goto(addr0056);
      }
   }
}

