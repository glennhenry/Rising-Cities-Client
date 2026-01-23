package net.bigpoint.cityrama.model.popup
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PopupProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "PopupProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "PopupProxy";
      }
      
      private var _modalCount:int = 0;
      
      private var _popupReferences:Dictionary;
      
      public function PopupProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            super(param1,param2);
            if(_loc4_ || _loc3_)
            {
               §§goto(addr0035);
            }
            §§goto(addr00db);
         }
         addr0035:
         this._popupReferences = new Dictionary(true);
         if(_loc4_)
         {
            this._popupReferences[PopupSettingsVo.MINI_POPUP] = new Vector.<PopupSettingsVo>();
            if(_loc4_)
            {
               this._popupReferences[PopupSettingsVo.PAPER_POPUP] = new Vector.<PopupSettingsVo>();
               if(_loc4_)
               {
                  addr0089:
                  this._popupReferences[PopupSettingsVo.FEATURE_POPUP] = new Vector.<PopupSettingsVo>();
                  if(_loc4_ || Boolean(this))
                  {
                     §§goto(addr00b8);
                  }
                  §§goto(addr00db);
               }
               addr00b8:
               this._popupReferences[PopupSettingsVo.STACK_POPUP] = new Vector.<PopupSettingsVo>();
               if(_loc4_ || _loc3_)
               {
                  addr00db:
                  this._modalCount = 0;
               }
               §§goto(addr00e1);
            }
            §§goto(addr0089);
         }
         addr00e1:
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.onRegister();
         }
      }
      
      public function getPopupSettings(param1:String) : PopupSettingsVo
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:PopupSettingsVo = null;
         var _loc3_:Vector.<PopupSettingsVo> = null;
         var _loc4_:* = 0;
         for each(_loc3_ in this._popupReferences)
         {
            if(!_loc8_)
            {
               §§push(0);
               if(!_loc8_)
               {
                  _loc4_ = §§pop();
                  if(!_loc7_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr00a4:
               }
               while(§§pop() < _loc3_.length)
               {
                  _loc2_ = _loc3_[_loc4_];
                  if(!_loc8_)
                  {
                     if(_loc2_.mediatorName == param1)
                     {
                        if(!(_loc8_ && Boolean(this)))
                        {
                           return _loc2_;
                        }
                     }
                  }
                  _loc4_++;
               }
               continue;
            }
            §§goto(addr00a4);
         }
         return null;
      }
      
      public function addPopupSettings(param1:PopupSettingsVo) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.type;
         if(!_loc4_)
         {
            if(PopupSettingsVo.STACK_POPUP === _loc2_)
            {
               addr0071:
               §§push(0);
               if(_loc3_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  this.handleAddStackPopup(param1);
                  if(_loc4_ && _loc3_)
                  {
                  }
                  break;
               default:
                  this.handleDefaultPopup(param1);
                  if(_loc3_)
                  {
                  }
            }
            return;
         }
         §§goto(addr0071);
      }
      
      private function handleAddStackPopup(param1:PopupSettingsVo) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || _loc3_)
         {
            this._popupReferences[param1.type].push(param1);
            if(!_loc4_)
            {
               if(param1.modal)
               {
                  if(_loc5_ || _loc2_)
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr0091);
            }
            addr005a:
            var _loc2_:* = this;
            §§push(_loc2_._modalCount);
            if(_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               _loc2_._modalCount = _loc3_;
            }
            if(!(_loc4_ && _loc3_))
            {
               addr0091:
               if(this._popupReferences[param1.type].length == 1)
               {
                  if(!_loc4_)
                  {
                     addr00ab:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_EXECUTE,param1);
                  }
               }
            }
            §§goto(addr00b6);
         }
         addr00b6:
      }
      
      private function handleDefaultPopup(param1:PopupSettingsVo) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            this._popupReferences[param1.type].push(param1);
            if(_loc4_ || _loc2_)
            {
               if(param1.modal)
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     var _loc2_:* = this;
                     §§push(_loc2_._modalCount);
                     if(_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_._modalCount = _loc3_;
                     }
                     if(!_loc5_)
                     {
                        addr0095:
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_EXECUTE,param1);
                     }
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0095);
            }
            addr00a0:
            return;
         }
         §§goto(addr0095);
      }
      
      public function removePopupSettings(param1:String) : PopupSettingsVo
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = this.getPopupSettingsVoByMediatorName(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               var _loc3_:* = _loc2_.type;
               addr0073:
               if(!_loc4_)
               {
                  if(PopupSettingsVo.STACK_POPUP === _loc3_)
                  {
                     addr0093:
                     §§push(0);
                     if(_loc4_ && Boolean(param1))
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  switch(§§pop())
                  {
                     case 0:
                        this.removeStackPopup(_loc2_);
                        if(_loc4_ && Boolean(_loc2_))
                        {
                        }
                        break;
                     default:
                        this.removeDefaultPopup(_loc2_);
                        if(_loc4_ && Boolean(_loc2_))
                        {
                        }
                  }
                  §§goto(addr00c0);
               }
               §§goto(addr0093);
            }
            addr00c0:
            return _loc2_;
         }
         §§goto(addr0073);
      }
      
      private function removeStackPopup(param1:PopupSettingsVo) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_ || _loc2_)
         {
            if(param1.modal)
            {
               if(_loc7_)
               {
                  var _loc4_:* = this;
                  §§push(_loc4_._modalCount);
                  if(!_loc6_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc7_ || _loc2_)
                  {
                     _loc4_._modalCount = _loc5_;
                  }
               }
            }
         }
         var _loc2_:Vector.<PopupSettingsVo> = this._popupReferences[param1.type];
         var _loc3_:int = int(_loc2_.indexOf(param1));
         if(!_loc6_)
         {
            §§push(_loc3_);
            if(!(_loc6_ && Boolean(this)))
            {
               §§push(-1);
               if(_loc7_ || Boolean(_loc2_))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc7_)
                     {
                        throw new Error("Popup was not found in the stack");
                     }
                  }
                  addr00c7:
                  addr00c6:
                  §§push(_loc3_);
                  §§push(0);
               }
               if(§§pop() != §§pop())
               {
                  if(_loc7_ || Boolean(param1))
                  {
                     throw new Error("Popup is not the first popup in the stack");
                  }
               }
               else
               {
                  this._popupReferences[param1.type].shift();
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     if(this._popupReferences[param1.type].length)
                     {
                        if(!_loc6_)
                        {
                           addr0136:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_EXECUTE,this._popupReferences[param1.type][0]);
                        }
                     }
                     §§goto(addr014f);
                  }
                  §§goto(addr0136);
               }
               addr014f:
               return;
            }
            §§goto(addr00c7);
         }
         §§goto(addr00c6);
      }
      
      private function removeDefaultPopup(param1:PopupSettingsVo) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!_loc7_)
         {
            if(param1.modal)
            {
               if(!(_loc7_ && Boolean(param1)))
               {
                  addr002f:
                  var _loc4_:* = this;
                  §§push(_loc4_._modalCount);
                  if(!_loc7_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc6_ || Boolean(param1))
                  {
                     _loc4_._modalCount = _loc5_;
                  }
               }
            }
            var _loc2_:Vector.<PopupSettingsVo> = this._popupReferences[param1.type];
            var _loc3_:int = int(_loc2_.indexOf(param1));
            if(_loc6_ || Boolean(param1))
            {
               if(_loc3_ != -1)
               {
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     this._popupReferences[param1.type].splice(_loc3_,1);
                  }
               }
            }
            return;
         }
         §§goto(addr002f);
      }
      
      private function getPopupSettingsVoByMediatorName(param1:String) : PopupSettingsVo
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = null;
         var _loc3_:Vector.<PopupSettingsVo> = null;
         var _loc4_:* = 0;
         for each(_loc3_ in this._popupReferences)
         {
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               §§push(int(_loc3_.length - 1));
               if(!_loc7_)
               {
                  _loc4_ = §§pop();
                  if(!_loc8_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr00ba:
               }
               loop2:
               while(§§pop() >= 0)
               {
                  if(_loc3_[_loc4_].mediatorName == param1)
                  {
                     if(_loc8_ || Boolean(param1))
                     {
                        while(true)
                        {
                           _loc2_ = _loc3_[_loc4_];
                        }
                        addr0088:
                     }
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc7_)
                     {
                        §§push(§§pop() - 1);
                        if(_loc7_)
                        {
                           continue loop2;
                        }
                     }
                     _loc4_ = §§pop();
                     if(_loc7_ && Boolean(_loc2_))
                     {
                        break;
                     }
                     §§goto(addr00ba);
                  }
                  break;
               }
               continue;
            }
            §§goto(addr0088);
         }
         return _loc2_;
      }
      
      public function isModalPopupOpened() : Boolean
      {
         return this._modalCount > 0;
      }
      
      public function get popupReferences() : Dictionary
      {
         return this._popupReferences;
      }
      
      public function get isPopupOpen() : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:Vector.<PopupSettingsVo> = null;
         if(_loc4_)
         {
            §§push(this.isModalPopupOpened());
            if(_loc4_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§goto(addr003f);
                  }
               }
               addr0040:
               var _loc2_:int = 0;
               var _loc3_:* = this.popupReferences;
               while(true)
               {
                  for each(_loc1_ in _loc3_)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     §§push(Boolean(_loc1_));
                     if(!_loc5_)
                     {
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        if(_temp_2)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              §§pop();
                              if(_loc5_ && _loc3_)
                              {
                                 continue;
                              }
                              §§push(Boolean(_loc1_.length));
                              if(_loc4_ || _loc3_)
                              {
                                 addr00b0:
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && Boolean(_loc2_)))
                                    {
                                       break;
                                    }
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr00c3);
                        }
                     }
                     §§goto(addr00b0);
                  }
                  return false;
               }
               addr00c3:
               return §§pop();
               §§push(true);
            }
            addr003f:
            return true;
         }
         §§goto(addr0040);
      }
   }
}

