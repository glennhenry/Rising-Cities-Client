package net.bigpoint.cityrama.view.common.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ConfirmationInfoLayer extends Group implements IBindingClient
   {
      
      public static const EVENT_CONFIRM_CLICKED:String = "EVENT_CONFIRM_CLICKED";
      
      public static const EVENT_ABORT_CLICKED:String = "EVENT_ABORT_CLICKED";
      
      private static const briskOuterMiddle:BriskDynaVo;
      
      private static const briskCorner:BriskDynaVo;
      
      private static const briskMiddle:BriskDynaVo;
      
      private static var _abortButton:MultistateButton;
      
      private static var _confirmButton:MultistateButton;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         EVENT_CONFIRM_CLICKED = "EVENT_CONFIRM_CLICKED";
         if(_loc2_)
         {
            EVENT_ABORT_CLICKED = "EVENT_ABORT_CLICKED";
            addr0024:
            if(_loc2_)
            {
               briskOuterMiddle = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_outermiddle","gui_popups_paperPopup");
               if(_loc2_)
               {
                  §§goto(addr0060);
               }
               §§goto(addr007a);
            }
         }
         addr0060:
         briskCorner = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_corner","gui_popups_paperPopup");
         if(!_loc1_)
         {
            addr007a:
            briskMiddle = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_middle","gui_popups_paperPopup");
         }
         return;
      }
      §§goto(addr0024);
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib1:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib2:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib3:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib4:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib5:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib6:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib7:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib8:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib9:BriskImageDynaLib;
      
      private var _1616565516abortBtn:MultistateButton;
      
      private var _1290911217backgroundGroup:VGroup;
      
      private var _1781625235buttonGroup:HGroup;
      
      private var _842377084confirmBtn:MultistateButton;
      
      private var _1787280239costAmountLabel:LocaLabel;
      
      private var _288049369costLabel:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _642714088verificationText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _verificationAmount:Number = -1;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ConfirmationInfoLayer()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc4_ && _loc2_))
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_ || Boolean(this))
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     addr0047:
                     §§pop().§§slot[5] = null;
                     if(_loc3_ || _loc2_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc3_ || _loc2_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc4_ && _loc1_))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc3_)
                                 {
                                    super();
                                    if(_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc3_)
                                          {
                                             addr00b7:
                                             §§pop().§§slot[1] = this._ConfirmationInfoLayer_bindingsSetup();
                                             if(_loc3_)
                                             {
                                                addr00c6:
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   addr00cd:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr00e0:
                                                      §§push(§§newactivation());
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         addr00ef:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr0117:
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_components_ConfirmationInfoLayerWatcherSetupUtil");
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr0132:
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           addr0139:
                                                                           if(_loc3_ || _loc1_)
                                                                           {
                                                                              addr0162:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ConfirmationInfoLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr017e:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    addr01ad:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       addr01db:
                                                                                       this.minHeight = 160;
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr01e7:
                                                                                          this.minWidth = 220;
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr01f3:
                                                                                             this.mxmlContent = [this._ConfirmationInfoLayer_VGroup1_i(),this._ConfirmationInfoLayer_VGroup4_c(),this._ConfirmationInfoLayer_BriskImageDynaLib12_c()];
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                addr0217:
                                                                                                this.addEventListener("creationComplete",this.___ConfirmationInfoLayer_Group1_creationComplete);
                                                                                                if(_loc3_ || _loc1_)
                                                                                                {
                                                                                                   addr0232:
                                                                                                   i = 0;
                                                                                                   addr0230:
                                                                                                }
                                                                                                var _temp_16:*;
                                                                                                loop0:
                                                                                                do
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         while(§§pop() < §§pop().§§slot[1].length)
                                                                                                         {
                                                                                                            Binding(bindings[i]).execute();
                                                                                                            if(_loc4_ && _loc1_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(!(_loc4_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(!(_loc4_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!(_loc4_ && _loc1_))
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                while(var _temp_16:* = §§pop(), §§pop().§§slot[4] = _temp_16, _loc3_ || Boolean(this));
                                                                                                
                                                                                                return;
                                                                                                addr02b8:
                                                                                             }
                                                                                             §§goto(addr0230);
                                                                                          }
                                                                                          §§goto(addr02b8);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0217);
                                                                                 }
                                                                                 §§goto(addr0230);
                                                                              }
                                                                              §§goto(addr01db);
                                                                           }
                                                                           §§goto(addr01ad);
                                                                        }
                                                                        §§goto(addr0232);
                                                                     }
                                                                     §§goto(addr02b8);
                                                                  }
                                                                  §§goto(addr0139);
                                                               }
                                                               §§goto(addr0230);
                                                            }
                                                            §§goto(addr0162);
                                                         }
                                                         §§goto(addr0117);
                                                      }
                                                      §§goto(addr0139);
                                                   }
                                                   §§goto(addr01f3);
                                                }
                                                §§goto(addr0232);
                                             }
                                             §§goto(addr0132);
                                          }
                                          §§goto(addr00cd);
                                       }
                                       §§goto(addr017e);
                                    }
                                    §§goto(addr0217);
                                 }
                                 §§goto(addr01f3);
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr00e0);
                        }
                        §§goto(addr01e7);
                     }
                     §§goto(addr01f3);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr0230);
            }
            §§goto(addr0047);
         }
         §§goto(addr00ef);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || ConfirmationInfoLayer)
         {
            ConfirmationInfoLayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(this._isDirty);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop());
                  if(!(_loc1_ && _loc1_))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr0063:
                           §§pop();
                           if(!(_loc1_ && _loc1_))
                           {
                              §§goto(addr0082);
                           }
                           §§goto(addr0093);
                        }
                     }
                  }
                  addr0082:
                  if(this._verificationAmount > 0)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr0093:
                        this._isDirty = false;
                        if(_loc2_)
                        {
                           addr009d:
                           this.costAmountLabel.text = LocaUtils.getThousendSeperatedNumber(this._verificationAmount);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr0063);
            }
         }
         addr00ad:
      }
      
      public function set verificationAmount(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(RandomUtilities.isUnEqual(param1,this._verificationAmount))
            {
               if(!(_loc2_ && _loc2_))
               {
                  this._verificationAmount = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0065:
                     this._isDirty = true;
                     if(_loc3_)
                     {
                        addr006f:
                        invalidateProperties();
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr006f);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
      
      private function handleAbort(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            dispatchEvent(new Event(EVENT_ABORT_CLICKED,true,true));
         }
      }
      
      private function handleConfirm(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            dispatchEvent(new Event(EVENT_CONFIRM_CLICKED,true,true));
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.header.text = LocaUtils.getString("rcl.guiinfolayer.confirmation","rcl.guiinfolayer.confirmation.header.capital");
            if(_loc2_)
            {
               this.verificationText.text = LocaUtils.getString("rcl.guiinfolayer.confirmation","rcl.guiinfolayer.confirmation.text");
               addr0045:
               if(!_loc3_)
               {
                  this.costLabel.text = LocaUtils.getString("rcl.guiinfolayer.confirmation","rcl.guiinfolayer.confirmation.costs");
                  if(_loc2_ || Boolean(param1))
                  {
                     addr0088:
                     invalidateSize();
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0088);
            }
            addr008f:
            return;
         }
         §§goto(addr0045);
      }
      
      private function _ConfirmationInfoLayer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr003b);
               }
               §§goto(addr00c2);
            }
            §§goto(addr007d);
         }
         addr003b:
         _loc1_.percentHeight = 100;
         if(_loc2_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._ConfirmationInfoLayer_HGroup1_c(),this._ConfirmationInfoLayer_HGroup2_c(),this._ConfirmationInfoLayer_HGroup3_c()];
            if(_loc2_ || Boolean(this))
            {
               addr007d:
               _loc1_.id = "backgroundGroup";
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr00a7);
                     }
                  }
               }
            }
            §§goto(addr00b8);
         }
         addr00a7:
         _loc1_.document = this;
         if(!(_loc3_ && _loc3_))
         {
            addr00b8:
            this.backgroundGroup = _loc1_;
            if(_loc2_)
            {
               addr00c2:
               BindingManager.executeBindings(this,"backgroundGroup",this.backgroundGroup);
            }
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0048:
                  _loc1_.height = 12;
                  if(_loc3_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0065);
            }
            addr0052:
            _loc1_.verticalAlign = "bottom";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.mxmlContent = [this._ConfirmationInfoLayer_BriskImageDynaLib1_i(),this._ConfirmationInfoLayer_BriskImageDynaLib2_i(),this._ConfirmationInfoLayer_BriskImageDynaLib3_i()];
               addr0065:
               if(_loc3_ || _loc3_)
               {
                  addr0097:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr00a3:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr00a3);
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr0048);
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.rotation = -90;
            if(_loc2_)
            {
               addr0031:
               _loc1_.width = 12;
               if(!_loc3_)
               {
                  _loc1_.height = 12;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.bottom = 0;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib1";
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007f:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0098:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr00a1:
                                    this._ConfirmationInfoLayer_BriskImageDynaLib1 = _loc1_;
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr00b4:
                                       BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib1",this._ConfirmationInfoLayer_BriskImageDynaLib1);
                                    }
                                 }
                              }
                              §§goto(addr00c2);
                           }
                        }
                        §§goto(addr00a1);
                     }
                     addr00c2:
                     return _loc1_;
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0098);
            }
            §§goto(addr00b4);
         }
         §§goto(addr0031);
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.height = 12;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.bottom = 0;
                  if(_loc3_ || _loc2_)
                  {
                     addr006c:
                     _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib2";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0083:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr009f:
                                 this._ConfirmationInfoLayer_BriskImageDynaLib2 = _loc1_;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib2",this._ConfirmationInfoLayer_BriskImageDynaLib2);
                                 }
                              }
                           }
                           §§goto(addr00c0);
                        }
                        §§goto(addr009f);
                     }
                  }
                  §§goto(addr0083);
               }
               addr00c0:
               return _loc1_;
            }
            §§goto(addr009f);
         }
         §§goto(addr006c);
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.rotation = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 12;
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr004f);
               }
               §§goto(addr0085);
            }
            §§goto(addr0059);
         }
         addr004f:
         _loc1_.height = 12;
         if(_loc3_)
         {
            addr0059:
            _loc1_.bottom = 0;
            if(_loc3_)
            {
               _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib3";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0085:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr008e:
                           this._ConfirmationInfoLayer_BriskImageDynaLib3 = _loc1_;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00a1:
                              BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib3",this._ConfirmationInfoLayer_BriskImageDynaLib3);
                           }
                        }
                        §§goto(addr00af);
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr00af);
            }
            §§goto(addr00a1);
         }
         addr00af:
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.gap = 0;
                  addr0048:
                  if(_loc3_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0085);
               }
               addr005d:
               _loc1_.mxmlContent = [this._ConfirmationInfoLayer_VGroup2_c(),this._ConfirmationInfoLayer_BriskImageDynaLib5_i(),this._ConfirmationInfoLayer_VGroup3_c()];
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0085:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0085);
         }
         §§goto(addr0048);
      }
      
      private function _ConfirmationInfoLayer_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               _loc1_.width = 12;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.gap = 0;
                  if(!_loc2_)
                  {
                     addr005a:
                     _loc1_.horizontalAlign = "right";
                     if(!_loc2_)
                     {
                        addr0070:
                        _loc1_.mxmlContent = [this._ConfirmationInfoLayer_BriskImageDynaLib4_i()];
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr0070);
               }
               addr0098:
               return _loc1_;
            }
            §§goto(addr0070);
         }
         §§goto(addr005a);
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.rotation = -90;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.width = 12;
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib4";
                     if(_loc2_)
                     {
                        addr005b:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr006f);
                           }
                        }
                     }
                     §§goto(addr008c);
                  }
               }
            }
            §§goto(addr005b);
         }
         addr006f:
         _loc1_.document = this;
         if(_loc2_ || Boolean(this))
         {
            addr008c:
            this._ConfirmationInfoLayer_BriskImageDynaLib4 = _loc1_;
            if(_loc2_ || Boolean(this))
            {
               BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib4",this._ConfirmationInfoLayer_BriskImageDynaLib4);
            }
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib5";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              addr0093:
                              this._ConfirmationInfoLayer_BriskImageDynaLib5 = _loc1_;
                              if(!_loc2_)
                              {
                                 BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib5",this._ConfirmationInfoLayer_BriskImageDynaLib5);
                              }
                           }
                        }
                        §§goto(addr00ac);
                     }
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0063);
            }
            addr00ac:
            return _loc1_;
         }
         §§goto(addr0063);
      }
      
      private function _ConfirmationInfoLayer_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr0038);
            }
            §§goto(addr0068);
         }
         addr0038:
         _loc1_.width = 12;
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && _loc3_))
            {
               addr0068:
               _loc1_.horizontalAlign = "left";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._ConfirmationInfoLayer_BriskImageDynaLib6_i()];
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr00a1);
                  }
                  §§goto(addr00b5);
               }
               addr00a1:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr00b5:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00b9);
            }
            §§goto(addr00b5);
         }
         addr00b9:
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.rotation = 90;
            if(_loc2_)
            {
               _loc1_.width = 12;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0061:
                     _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib6";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0097:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr00a0:
                                 this._ConfirmationInfoLayer_BriskImageDynaLib6 = _loc1_;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib6",this._ConfirmationInfoLayer_BriskImageDynaLib6);
                                 }
                              }
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00a0);
                     }
                  }
                  addr00c1:
                  return _loc1_;
               }
               §§goto(addr0061);
            }
         }
         §§goto(addr0097);
      }
      
      private function _ConfirmationInfoLayer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.gap = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.height = 12;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     §§goto(addr006d);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr006d);
            }
            §§goto(addr0089);
         }
         addr006d:
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_BriskImageDynaLib7_i(),this._ConfirmationInfoLayer_BriskImageDynaLib8_i(),this._ConfirmationInfoLayer_BriskImageDynaLib9_i()];
         if(_loc2_)
         {
            addr0089:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0095:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.rotation = 180;
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr003b);
            }
            §§goto(addr0058);
         }
         addr003b:
         _loc1_.width = 12;
         if(_loc2_ || _loc3_)
         {
            addr0058:
            _loc1_.height = 12;
            if(!_loc3_)
            {
               _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib7";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr009e:
                           this._ConfirmationInfoLayer_BriskImageDynaLib7 = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib7",this._ConfirmationInfoLayer_BriskImageDynaLib7);
                           }
                        }
                        §§goto(addr00bf);
                     }
                  }
               }
            }
            §§goto(addr009e);
         }
         addr00bf:
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.rotation = 180;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  addr0036:
                  _loc1_.height = 12;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib8";
                     if(!_loc2_)
                     {
                        §§goto(addr005e);
                     }
                  }
               }
               §§goto(addr0094);
            }
            §§goto(addr0036);
         }
         addr005e:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               _loc1_.document = this;
               if(_loc3_)
               {
                  §§goto(addr0081);
               }
               §§goto(addr0094);
            }
         }
         addr0081:
         this._ConfirmationInfoLayer_BriskImageDynaLib8 = _loc1_;
         if(!(_loc2_ && Boolean(this)))
         {
            addr0094:
            BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib8",this._ConfirmationInfoLayer_BriskImageDynaLib8);
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.rotation = 90;
            if(_loc2_)
            {
               _loc1_.width = 12;
               if(!_loc3_)
               {
                  _loc1_.height = 12;
                  if(_loc2_)
                  {
                     _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib9";
                     addr003e:
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr005e:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr007d:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr008e:
                                 this._ConfirmationInfoLayer_BriskImageDynaLib9 = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr0099:
                                    BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib9",this._ConfirmationInfoLayer_BriskImageDynaLib9);
                                 }
                                 §§goto(addr00a7);
                              }
                              §§goto(addr0099);
                           }
                           addr00a7:
                           return _loc1_;
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr008e);
               }
            }
            §§goto(addr003e);
         }
         §§goto(addr005e);
      }
      
      private function _ConfirmationInfoLayer_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.paddingTop = 10;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0056:
                     _loc1_.paddingLeft = 8;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.paddingRight = 8;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.paddingBottom = 13;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr009b:
                              _loc1_.horizontalAlign = "center";
                              if(_loc2_)
                              {
                                 _loc1_.mxmlContent = [this._ConfirmationInfoLayer_Group2_c(),this._ConfirmationInfoLayer_Group3_c(),this._ConfirmationInfoLayer_VGroup5_c(),this._ConfirmationInfoLayer_BriskImageDynaLib10_c(),this._ConfirmationInfoLayer_HGroup5_c(),this._ConfirmationInfoLayer_HGroup6_i()];
                                 addr00a5:
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr00fc:
                                          _loc1_.document = this;
                                       }
                                    }
                                    §§goto(addr0100);
                                 }
                              }
                              §§goto(addr00fc);
                           }
                           §§goto(addr00a5);
                        }
                        addr0100:
                        return _loc1_;
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr00fc);
            }
            §§goto(addr0056);
         }
         §§goto(addr00fc);
      }
      
      private function _ConfirmationInfoLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.height = 30;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0053:
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ConfirmationInfoLayer_BlueBarComponent1_c(),this._ConfirmationInfoLayer_HGroup4_c()];
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0088);
                     }
                  }
                  §§goto(addr009c);
               }
               addr0088:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr009c:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr009c);
         }
         §§goto(addr0053);
      }
      
      private function _ConfirmationInfoLayer_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentWidth = 100;
               §§goto(addr0046);
            }
            §§goto(addr0078);
         }
         addr0046:
         if(_loc3_ || _loc3_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0078:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        _loc1_.paddingLeft = 40;
                        if(_loc3_)
                        {
                           addr0060:
                           _loc1_.paddingRight = 40;
                           if(_loc3_)
                           {
                              _loc1_.mxmlContent = [this._ConfirmationInfoLayer_LocaLabel1_i()];
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr0090);
                              }
                              §§goto(addr00a4);
                           }
                        }
                        addr0090:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00a4:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr00a4);
               }
               addr00a8:
               return _loc1_;
            }
            §§goto(addr00a4);
         }
         §§goto(addr0060);
      }
      
      private function _ConfirmationInfoLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "progressBarLabel";
            if(!(_loc2_ && Boolean(this)))
            {
               addr003b:
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0058:
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc2_)
                  {
                     _loc1_.id = "header";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr0097);
                           }
                        }
                        §§goto(addr00a0);
                     }
                     addr0097:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr00a0:
                        this.header = _loc1_;
                        if(_loc3_)
                        {
                           addr00aa:
                           BindingManager.executeBindings(this,"header",this.header);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr00aa);
            }
            §§goto(addr0058);
         }
         §§goto(addr003b);
      }
      
      private function _ConfirmationInfoLayer_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0051:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0051);
      }
      
      private function _ConfirmationInfoLayer_VGroup5_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ConfirmationInfoLayer_LocaLabel2_i()];
                  if(_loc3_)
                  {
                     addr0068:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr007c:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0080);
            }
            §§goto(addr0068);
         }
         addr0080:
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "infoLabel";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 90;
               if(_loc3_)
               {
                  _loc1_.id = "verificationText";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr007e:
                              this.verificationText = _loc1_;
                              if(_loc3_ || _loc2_)
                              {
                                 addr0090:
                                 BindingManager.executeBindings(this,"verificationText",this.verificationText);
                              }
                           }
                           §§goto(addr009d);
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr0090);
            }
            §§goto(addr007e);
         }
         addr009d:
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  addr0049:
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_)
                     {
                        §§goto(addr0070);
                     }
                     §§goto(addr007c);
                  }
                  addr0070:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr007c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0080);
               }
               addr0080:
               return _loc1_;
            }
            §§goto(addr0070);
         }
         §§goto(addr0049);
      }
      
      private function _ConfirmationInfoLayer_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  _loc1_.percentWidth = 90;
                  if(!_loc3_)
                  {
                     _loc1_.gap = 6;
                     if(!_loc3_)
                     {
                        addr0068:
                        _loc1_.mxmlContent = [this._ConfirmationInfoLayer_LocaLabel3_i(),this._ConfirmationInfoLayer_LocaLabel4_i(),this._ConfirmationInfoLayer_BriskImageDynaLib11_c()];
                        if(!_loc3_)
                        {
                           §§goto(addr0084);
                        }
                        §§goto(addr0090);
                     }
                  }
                  addr0084:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0090:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0068);
            }
         }
         §§goto(addr0090);
      }
      
      private function _ConfirmationInfoLayer_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               §§goto(addr002f);
            }
            §§goto(addr008e);
         }
         addr002f:
         _loc1_.maxDisplayedLines = 2;
         if(_loc2_)
         {
            _loc1_.styleName = "residentialOutputItem";
            if(!_loc3_)
            {
               _loc1_.id = "costLabel";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr007d:
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§goto(addr008e);
                        }
                        §§goto(addr0098);
                     }
                  }
               }
               addr008e:
               this.costLabel = _loc1_;
               if(_loc2_)
               {
                  addr0098:
                  BindingManager.executeBindings(this,"costLabel",this.costLabel);
               }
               §§goto(addr00a5);
            }
            §§goto(addr007d);
         }
         addr00a5:
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "postitHeader";
            if(_loc3_)
            {
               _loc1_.setStyle("fontSize",11);
               if(!_loc2_)
               {
                  _loc1_.id = "costAmountLabel";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr006c:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              addr008a:
                              this.costAmountLabel = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 BindingManager.executeBindings(this,"costAmountLabel",this.costAmountLabel);
                              }
                           }
                           §§goto(addr00a9);
                        }
                     }
                  }
                  §§goto(addr008a);
               }
               addr00a9:
               return _loc1_;
            }
            §§goto(addr008a);
         }
         §§goto(addr006c);
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "dd_button_icon";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_HGroup6_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 90;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.gap = 20;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr004d);
                  }
                  §§goto(addr00cd);
               }
               addr004d:
               _loc1_.minWidth = 200;
               if(_loc2_)
               {
                  addr0065:
                  _loc1_.minHeight = 40;
                  if(!_loc3_)
                  {
                     §§goto(addr0070);
                  }
                  §§goto(addr0086);
               }
               addr0070:
               _loc1_.mxmlContent = [this._ConfirmationInfoLayer_MultistateButton1_i(),this._ConfirmationInfoLayer_MultistateButton2_i()];
               if(_loc2_)
               {
                  addr0086:
                  _loc1_.id = "buttonGroup";
                  if(_loc2_)
                  {
                     addr0091:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr00b2);
                        }
                        §§goto(addr00cd);
                     }
                  }
                  §§goto(addr00c3);
               }
               addr00b2:
               _loc1_.document = this;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr00c3:
                  this.buttonGroup = _loc1_;
                  if(!_loc3_)
                  {
                     addr00cd:
                     BindingManager.executeBindings(this,"buttonGroup",this.buttonGroup);
                  }
               }
               return _loc1_;
            }
            §§goto(addr0091);
         }
         §§goto(addr0065);
      }
      
      private function _ConfirmationInfoLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.styleName = "abort";
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0045:
                  _loc1_.minWidth = 90;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.minHeight = 40;
                     if(!_loc2_)
                     {
                        addr0063:
                        _loc1_.imageNameLeft = "icon_cancel";
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr0084);
                        }
                        §§goto(addr00a9);
                     }
                     addr0084:
                     _loc1_.libNameLeft = "gui_popups_miniLayer";
                     if(_loc3_)
                     {
                        _loc1_.addEventListener("creationComplete",this.__abortBtn_creationComplete);
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00a9:
                           _loc1_.addEventListener("click",this.__abortBtn_click);
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              _loc1_.id = "abortBtn";
                              if(_loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00ec:
                                       _loc1_.document = this;
                                       if(_loc3_)
                                       {
                                          addr00f5:
                                          this.abortBtn = _loc1_;
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             addr0107:
                                             BindingManager.executeBindings(this,"abortBtn",this.abortBtn);
                                          }
                                          §§goto(addr0114);
                                       }
                                       §§goto(addr0107);
                                    }
                                    §§goto(addr0114);
                                 }
                                 §§goto(addr00f5);
                              }
                           }
                           §§goto(addr00ec);
                        }
                        §§goto(addr00f5);
                     }
                     §§goto(addr0114);
                  }
                  §§goto(addr0063);
               }
               addr0114:
               return _loc1_;
            }
            §§goto(addr00ec);
         }
         §§goto(addr0045);
      }
      
      public function __abortBtn_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.abortBtn.invalidateSize();
         }
      }
      
      public function __abortBtn_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleAbort(param1);
         }
      }
      
      private function _ConfirmationInfoLayer_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "confirm";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.minWidth = 90;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.minHeight = 40;
                     if(_loc3_)
                     {
                        addr0062:
                        _loc1_.showSparkle = true;
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.imageNameLeft = "icon_check";
                           if(_loc3_)
                           {
                              _loc1_.libNameLeft = "gui_popups_miniLayer";
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 _loc1_.addEventListener("creationComplete",this.__confirmBtn_creationComplete);
                                 if(!_loc2_)
                                 {
                                    addr00b0:
                                    _loc1_.addEventListener("click",this.__confirmBtn_click);
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00c9:
                                       _loc1_.id = "confirmBtn";
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr00dc:
                                          if(!_loc1_.document)
                                          {
                                             if(_loc3_ || Boolean(this))
                                             {
                                                addr00fc:
                                                _loc1_.document = this;
                                                if(!(_loc2_ && Boolean(_loc1_)))
                                                {
                                                   addr010d:
                                                   this.confirmBtn = _loc1_;
                                                   if(!_loc2_)
                                                   {
                                                      addr0117:
                                                      BindingManager.executeBindings(this,"confirmBtn",this.confirmBtn);
                                                   }
                                                   §§goto(addr0124);
                                                }
                                                §§goto(addr0117);
                                             }
                                             addr0124:
                                             return _loc1_;
                                          }
                                          §§goto(addr010d);
                                       }
                                    }
                                    §§goto(addr00fc);
                                 }
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00dc);
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr00dc);
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr00c9);
            }
            §§goto(addr0062);
         }
         §§goto(addr00c9);
      }
      
      public function __confirmBtn_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.confirmBtn.invalidateSize();
         }
      }
      
      public function __confirmBtn_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.handleConfirm(param1);
         }
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib12_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.top = -4;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0048:
               _loc1_.left = -10;
               if(_loc3_)
               {
                  _loc1_.dynaBmpSourceName = "infolayer_icon_rc";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0075:
                     _loc1_.dynaLibName = "gui_infield_gui_infolayer";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr008c:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr008c);
                  }
                  addr0090:
                  return _loc1_;
               }
            }
            §§goto(addr0075);
         }
         §§goto(addr0048);
      }
      
      public function ___ConfirmationInfoLayer_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _ConfirmationInfoLayer_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc2_)
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(0);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                        {
                           return briskCorner;
                        },null,"_ConfirmationInfoLayer_BriskImageDynaLib1.briskDynaVo");
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(!_loc2_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_)
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                    {
                                       return briskOuterMiddle;
                                    },null,"_ConfirmationInfoLayer_BriskImageDynaLib2.briskDynaVo");
                                    if(_loc3_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_)
                                       {
                                          addr009f:
                                          §§push(§§pop().§§slot[1]);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§push(2);
                                             if(_loc3_)
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                {
                                                   return briskCorner;
                                                },null,"_ConfirmationInfoLayer_BriskImageDynaLib3.briskDynaVo");
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      addr00e2:
                                                      §§push(§§pop().§§slot[1]);
                                                      if(_loc3_)
                                                      {
                                                         §§push(3);
                                                         if(!_loc2_)
                                                         {
                                                            addr00f0:
                                                            §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                            {
                                                               return briskOuterMiddle;
                                                            },null,"_ConfirmationInfoLayer_BriskImageDynaLib4.briskDynaVo");
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr0114:
                                                                     §§push(4);
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                        {
                                                                           return briskMiddle;
                                                                        },null,"_ConfirmationInfoLayer_BriskImageDynaLib5.briskDynaVo");
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              addr0154:
                                                                              §§push(§§pop().§§slot[1]);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr015b:
                                                                                 §§push(5);
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    addr016a:
                                                                                    §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                    {
                                                                                       return briskOuterMiddle;
                                                                                    },null,"_ConfirmationInfoLayer_BriskImageDynaLib6.briskDynaVo");
                                                                                    if(_loc3_ || Boolean(this))
                                                                                    {
                                                                                       addr0188:
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr018f:
                                                                                          §§push(§§pop().§§slot[1]);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             addr0196:
                                                                                             §§push(6);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                {
                                                                                                   return briskCorner;
                                                                                                },null,"_ConfirmationInfoLayer_BriskImageDynaLib7.briskDynaVo");
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   addr01b3:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc2_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr01c2:
                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                      if(!(_loc2_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(7);
                                                                                                         if(_loc3_ || _loc3_)
                                                                                                         {
                                                                                                            addr01e0:
                                                                                                            §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                            {
                                                                                                               return briskOuterMiddle;
                                                                                                            },null,"_ConfirmationInfoLayer_BriskImageDynaLib8.briskDynaVo");
                                                                                                            if(!(_loc2_ && _loc1_))
                                                                                                            {
                                                                                                               addr01fe:
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc3_ || _loc1_)
                                                                                                               {
                                                                                                                  addr020d:
                                                                                                                  §§push(§§pop().§§slot[1]);
                                                                                                                  if(_loc3_ || _loc1_)
                                                                                                                  {
                                                                                                                     addr021c:
                                                                                                                     §§push(8);
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                                        {
                                                                                                                           return briskCorner;
                                                                                                                        },null,"_ConfirmationInfoLayer_BriskImageDynaLib9.briskDynaVo");
                                                                                                                        if(_loc3_ || Boolean(this))
                                                                                                                        {
                                                                                                                           addr024e:
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc2_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§goto(addr027b);
                                                                                                                           }
                                                                                                                           §§goto(addr0279);
                                                                                                                        }
                                                                                                                        §§goto(addr0277);
                                                                                                                     }
                                                                                                                     §§goto(addr0266);
                                                                                                                  }
                                                                                                                  addr027b:
                                                                                                               }
                                                                                                               §§goto(addr025d);
                                                                                                            }
                                                                                                            §§goto(addr024e);
                                                                                                         }
                                                                                                         §§goto(addr0266);
                                                                                                      }
                                                                                                      §§goto(addr0264);
                                                                                                   }
                                                                                                   §§goto(addr025d);
                                                                                                }
                                                                                                §§goto(addr01fe);
                                                                                             }
                                                                                             §§goto(addr01e0);
                                                                                          }
                                                                                          §§goto(addr021c);
                                                                                       }
                                                                                       §§goto(addr020d);
                                                                                    }
                                                                                    §§goto(addr0277);
                                                                                 }
                                                                                 §§goto(addr01e0);
                                                                              }
                                                                              §§goto(addr0264);
                                                                           }
                                                                           §§goto(addr025d);
                                                                        }
                                                                        §§goto(addr024e);
                                                                     }
                                                                     §§goto(addr016a);
                                                                  }
                                                                  §§goto(addr0196);
                                                               }
                                                               §§goto(addr01c2);
                                                            }
                                                            §§goto(addr024e);
                                                         }
                                                         §§goto(addr016a);
                                                      }
                                                      §§goto(addr015b);
                                                   }
                                                   §§goto(addr018f);
                                                }
                                                §§goto(addr0188);
                                             }
                                             §§goto(addr00f0);
                                          }
                                          §§goto(addr0114);
                                       }
                                       addr025d:
                                       §§push(§§pop().§§slot[1]);
                                       if(_loc3_)
                                       {
                                          addr0266:
                                          §§pop()[9] = new Binding(this,function():Number
                                          {
                                             return header.width + 10;
                                          },null,"verificationText.maxWidth");
                                          addr0279:
                                          addr0277:
                                          §§push(result);
                                          addr0264:
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr01b3);
                                 }
                                 §§goto(addr016a);
                              }
                              §§goto(addr015b);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr01fe);
                     }
                     §§goto(addr016a);
                  }
                  §§goto(addr0196);
               }
               §§goto(addr0154);
            }
            §§goto(addr01fe);
         }
         §§goto(addr00e2);
      }
      
      [Bindable(event="propertyChange")]
      public function get abortBtn() : MultistateButton
      {
         return this._1616565516abortBtn;
      }
      
      public function set abortBtn(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1616565516abortBtn;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1616565516abortBtn = param1;
                  if(_loc3_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"abortBtn",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr005a);
            }
            addr0081:
            return;
         }
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundGroup() : VGroup
      {
         return this._1290911217backgroundGroup;
      }
      
      public function set backgroundGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1290911217backgroundGroup;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0045:
                  this._1290911217backgroundGroup = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0064:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0064);
            }
            addr008a:
            return;
         }
         §§goto(addr0045);
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonGroup() : HGroup
      {
         return this._1781625235buttonGroup;
      }
      
      public function set buttonGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1781625235buttonGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1781625235buttonGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get confirmBtn() : MultistateButton
      {
         return this._842377084confirmBtn;
      }
      
      public function set confirmBtn(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._842377084confirmBtn;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._842377084confirmBtn = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirmBtn",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get costAmountLabel() : LocaLabel
      {
         return this._1787280239costAmountLabel;
      }
      
      public function set costAmountLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1787280239costAmountLabel;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr0052:
                  this._1787280239costAmountLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costAmountLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get costLabel() : LocaLabel
      {
         return this._288049369costLabel;
      }
      
      public function set costLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._288049369costLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._288049369costLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1221270899header;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0038:
                  this._1221270899header = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get verificationText() : LocaLabel
      {
         return this._642714088verificationText;
      }
      
      public function set verificationText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._642714088verificationText;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._642714088verificationText = param1;
                  addr0041:
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"verificationText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005e);
            }
            addr007d:
            return;
         }
         §§goto(addr0041);
      }
   }
}

