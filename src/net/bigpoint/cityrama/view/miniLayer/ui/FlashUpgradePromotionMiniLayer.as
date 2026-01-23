package net.bigpoint.cityrama.view.miniLayer.ui
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class FlashUpgradePromotionMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         _skinParts = {
            "moveArea":false,
            "sparkle":false,
            "closeButton":false,
            "controlBarGroup":false,
            "attentionSign":false,
            "contentGroup":false,
            "titleDisplay":false
         };
      }
      
      public var _FlashUpgradePromotionMiniLayer_BriskImageDynaLib1:BriskImageDynaLib;
      
      public var _FlashUpgradePromotionMiniLayer_BriskImageDynaLib3:BriskImageDynaLib;
      
      public var _FlashUpgradePromotionMiniLayer_BriskImageDynaLib4:BriskImageDynaLib;
      
      private var _1480909402acceptButton:MultistateButton;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1642411238linkLabel:LocaLabel;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FlashUpgradePromotionMiniLayer()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc4_ || _loc2_)
         {
            §§push(null);
            if(!(_loc3_ && _loc3_))
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr0046:
                     §§pop().§§slot[5] = null;
                     addr0045:
                     if(!(_loc3_ && _loc2_))
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || _loc2_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    super();
                                    if(!_loc3_)
                                    {
                                       addr009c:
                                       mx_internal::_document = this;
                                       if(_loc4_)
                                       {
                                          addr00af:
                                          §§push(§§newactivation());
                                          if(_loc4_ || Boolean(this))
                                          {
                                             addr00bf:
                                             §§pop().§§slot[1] = this._FlashUpgradePromotionMiniLayer_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                addr00ce:
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      addr00f2:
                                                      §§push(§§newactivation());
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addr0126:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr012d:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_FlashUpgradePromotionMiniLayerWatcherSetupUtil");
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr0140:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr015e:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return FlashUpgradePromotionMiniLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 addr0184:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       this.mxmlContentFactory = new DeferredInstanceFromFunction(this._FlashUpgradePromotionMiniLayer_Array1_c);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01ee:
                                                                                          this.addEventListener("creationComplete",this.___FlashUpgradePromotionMiniLayer_MiniLayerWindow1_creationComplete);
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             addr020a:
                                                                                             i = 0;
                                                                                             addr0208:
                                                                                          }
                                                                                       }
                                                                                       loop0:
                                                                                       while(true)
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
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() >= §§pop().§§slot[1].length)
                                                                                                   {
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   Binding(bindings[i]).execute();
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(uint(§§pop() + 1));
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         var _temp_17:* = §§pop();
                                                                                                         §§pop().§§slot[4] = _temp_17;
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       return;
                                                                                       addr0267:
                                                                                    }
                                                                                    §§goto(addr01ee);
                                                                                 }
                                                                                 §§goto(addr0208);
                                                                              }
                                                                           }
                                                                           §§goto(addr0267);
                                                                        }
                                                                        §§goto(addr020a);
                                                                     }
                                                                     §§goto(addr0267);
                                                                  }
                                                                  §§goto(addr020a);
                                                               }
                                                               §§goto(addr0184);
                                                            }
                                                         }
                                                         §§goto(addr015e);
                                                      }
                                                      §§goto(addr012d);
                                                   }
                                                   §§goto(addr015e);
                                                }
                                                §§goto(addr020a);
                                             }
                                             §§goto(addr0140);
                                          }
                                          §§goto(addr012d);
                                       }
                                       §§goto(addr01ee);
                                    }
                                    §§goto(addr0267);
                                 }
                                 §§goto(addr009c);
                              }
                              §§goto(addr00ce);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr00f2);
                     }
                     §§goto(addr0208);
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr0126);
            }
            §§goto(addr0046);
         }
         §§goto(addr0045);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            FlashUpgradePromotionMiniLayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     return;
                  }
               }
               addr0050:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0050);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.title = LocaUtils.getString("rcl.miniLayer.flashupgradepromotion","rcl.miniLayer.flashupgradepromotion.title.capital");
            if(_loc3_)
            {
               this.flavourLabel.text = LocaUtils.getString("rcl.miniLayer.flashupgradepromotion","rcl.miniLayer.flashupgradepromotion.flavour");
               if(!_loc2_)
               {
                  addr0053:
                  this.acceptButton.label = LocaUtils.getString("rcl.miniLayer.flashupgradepromotion","rcl.miniLayer.flashupgradepromotion.closebutton");
                  if(!_loc2_)
                  {
                     this.linkLabel.text = "http://get.adobe.com/flashplayer/";
                  }
               }
            }
            return;
         }
         §§goto(addr0053);
      }
      
      private function linkLabel_rollOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.linkLabel.styleName = "miniLayerLinkTextOver";
         }
      }
      
      private function linkLabel_rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.linkLabel.styleName = "miniLayerLinkText";
         }
      }
      
      private function _FlashUpgradePromotionMiniLayer_Array1_c() : Array
      {
         return [this._FlashUpgradePromotionMiniLayer_HGroup1_c()];
      }
      
      private function _FlashUpgradePromotionMiniLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.gap = 20;
            if(!_loc3_)
            {
               _loc1_.paddingLeft = 10;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._FlashUpgradePromotionMiniLayer_Group1_c(),this._FlashUpgradePromotionMiniLayer_Group2_c()];
                  addr004f:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr008e:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0092);
               }
               §§goto(addr008e);
            }
            addr0092:
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      private function _FlashUpgradePromotionMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.top = 30;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib1_i(),this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib2_i()];
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0083:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr008f:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0093);
            }
            §§goto(addr0083);
         }
         addr0093:
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr005c);
            }
            addr0051:
            _loc1_.id = "_FlashUpgradePromotionMiniLayer_BriskImageDynaLib1";
            if(_loc2_)
            {
               addr005c:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0068:
                     _loc1_.document = this;
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr0086);
                     }
                  }
                  §§goto(addr0099);
               }
            }
            addr0086:
            this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib1 = _loc1_;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0099:
               BindingManager.executeBindings(this,"_FlashUpgradePromotionMiniLayer_BriskImageDynaLib1",this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib1);
            }
            return _loc1_;
         }
         §§goto(addr0068);
      }
      
      private function _FlashUpgradePromotionMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = -1;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalCenter = -1;
               if(_loc3_)
               {
                  _loc1_.id = "polaroidImage";
                  if(_loc3_ || Boolean(this))
                  {
                     addr005d:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0086);
                           }
                           §§goto(addr0098);
                        }
                     }
                     addr0086:
                     this.polaroidImage = _loc1_;
                     if(_loc3_ || _loc3_)
                     {
                        addr0098:
                        BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr005d);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr0086);
      }
      
      private function _FlashUpgradePromotionMiniLayer_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 258;
            if(_loc3_)
            {
               _loc1_.height = 213;
               if(!_loc2_)
               {
                  _loc1_.top = 10;
                  addr0043:
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib3_i(),this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib4_i(),this._FlashUpgradePromotionMiniLayer_VGroup1_c()];
                     if(!_loc2_)
                     {
                        §§goto(addr0075);
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0043);
         }
         addr0075:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0081:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.id = "_FlashUpgradePromotionMiniLayer_BriskImageDynaLib3";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        addr0061:
                        this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib3 = _loc1_;
                        if(_loc2_ || _loc3_)
                        {
                           addr0073:
                           BindingManager.executeBindings(this,"_FlashUpgradePromotionMiniLayer_BriskImageDynaLib3",this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib3);
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0061);
            }
            addr0080:
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _FlashUpgradePromotionMiniLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.left = -10;
            if(_loc2_ || _loc3_)
            {
               _loc1_.top = -10;
               if(_loc2_)
               {
                  _loc1_.id = "_FlashUpgradePromotionMiniLayer_BriskImageDynaLib4";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0088:
                              this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib4 = _loc1_;
                              if(_loc2_)
                              {
                                 addr0093:
                                 BindingManager.executeBindings(this,"_FlashUpgradePromotionMiniLayer_BriskImageDynaLib4",this._FlashUpgradePromotionMiniLayer_BriskImageDynaLib4);
                              }
                           }
                           §§goto(addr00a1);
                        }
                     }
                  }
               }
               §§goto(addr0088);
            }
            addr00a1:
            return _loc1_;
         }
         §§goto(addr0093);
      }
      
      private function _FlashUpgradePromotionMiniLayer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.width = 258;
            if(_loc2_)
            {
               _loc1_.paddingTop = 55;
               if(!_loc3_)
               {
                  §§goto(addr0034);
               }
               §§goto(addr00ab);
            }
         }
         addr0034:
         _loc1_.paddingLeft = 10;
         if(_loc2_ || _loc3_)
         {
            _loc1_.gap = 10;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.paddingRight = 10;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.mxmlContent = [this._FlashUpgradePromotionMiniLayer_LocaLabel1_i(),this._FlashUpgradePromotionMiniLayer_LocaLabel2_i(),this._FlashUpgradePromotionMiniLayer_MultistateButton1_i()];
                     if(!_loc3_)
                     {
                        addr00ab:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr00ab);
               }
            }
         }
         addr00bb:
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(_loc3_ || _loc2_)
               {
                  addr0052:
                  _loc1_.id = "flavourLabel";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr007f:
                              this.flavourLabel = _loc1_;
                              if(_loc3_)
                              {
                                 addr0089:
                                 BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
                              }
                              §§goto(addr0096);
                           }
                           §§goto(addr0089);
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0089);
            }
            §§goto(addr0052);
         }
         addr0096:
         return _loc1_;
      }
      
      private function _FlashUpgradePromotionMiniLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.styleName = "miniLayerLinkText";
               if(!_loc3_)
               {
                  addr003c:
                  _loc1_.addEventListener("rollOver",this.__linkLabel_rollOver);
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.addEventListener("rollOut",this.__linkLabel_rollOut);
                     if(_loc2_)
                     {
                        _loc1_.id = "linkLabel";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr009b);
                              }
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00ae);
                     }
                  }
               }
            }
            addr009b:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr00a4:
               this.linkLabel = _loc1_;
               if(!_loc3_)
               {
                  addr00ae:
                  BindingManager.executeBindings(this,"linkLabel",this.linkLabel);
               }
            }
            return _loc1_;
         }
         §§goto(addr003c);
      }
      
      public function __linkLabel_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.linkLabel_rollOverHandler(param1);
         }
      }
      
      public function __linkLabel_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.linkLabel_rollOutHandler(param1);
         }
      }
      
      private function _FlashUpgradePromotionMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 210;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.id = "acceptButton";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr0070:
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr0081);
                        }
                     }
                     §§goto(addr008b);
                  }
                  addr0081:
                  this.acceptButton = _loc1_;
                  if(_loc3_)
                  {
                     addr008b:
                     BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0070);
            }
         }
         addr0098:
         return _loc1_;
      }
      
      public function ___FlashUpgradePromotionMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      private function _FlashUpgradePromotionMiniLayer_bindingsSetup() : Array
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
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                        {
                           return new BriskDynaVo(BriskDynaVo.LIB_QUEST,"quest_polaroidframe");
                        },null,"_FlashUpgradePromotionMiniLayer_BriskImageDynaLib1.briskDynaVo");
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(§§newactivation());
                           if(!_loc2_)
                           {
                              addr007d:
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(1);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                    {
                                       return new BriskDynaVo(BriskDynaVo.LIB_QUEST,"quest_polaroid_reward");
                                    },null,"polaroidImage.briskDynaVo");
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00e3:
                                             §§push(2);
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                addr00f2:
                                                §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                {
                                                   return new BriskDynaVo(BriskDynaVo.LIB_RESIDENTIAL_NEW,"quadrille_paper_small");
                                                },null,"_FlashUpgradePromotionMiniLayer_BriskImageDynaLib3.briskDynaVo");
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   addr011e:
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§goto(addr012d);
                                                   }
                                                   §§goto(addr014a);
                                                }
                                                §§goto(addr0148);
                                             }
                                             §§goto(addr0136);
                                          }
                                          §§goto(addr0134);
                                       }
                                       addr012d:
                                       §§push(§§pop().§§slot[1]);
                                       if(!_loc2_)
                                       {
                                          addr0136:
                                          §§pop()[3] = new Binding(this,function():BriskDynaVo
                                          {
                                             return new BriskDynaVo(BriskDynaVo.LIB_FIELD_INFOLAYER,"infolayer_icon_attention");
                                          },null,"_FlashUpgradePromotionMiniLayer_BriskImageDynaLib4.briskDynaVo");
                                          addr014a:
                                          addr0148:
                                          §§push(result);
                                          addr0134:
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr011e);
                                 }
                                 §§goto(addr0136);
                              }
                              §§goto(addr00e3);
                           }
                           §§goto(addr014a);
                        }
                        §§goto(addr011e);
                     }
                     §§goto(addr00f2);
                  }
                  §§goto(addr00e3);
               }
               §§goto(addr014a);
            }
            §§goto(addr0148);
         }
         §§goto(addr007d);
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButton() : MultistateButton
      {
         return this._1480909402acceptButton;
      }
      
      public function set acceptButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1480909402acceptButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0053:
                  this._1480909402acceptButton = param1;
                  if(_loc4_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
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
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0039:
                  this._949820541flavourLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0062);
                  }
               }
               §§goto(addr0053);
            }
            addr0062:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get linkLabel() : LocaLabel
      {
         return this._1642411238linkLabel;
      }
      
      public function set linkLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1642411238linkLabel;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1642411238linkLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"linkLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidImage() : BriskImageDynaLib
      {
         return this._2112922897polaroidImage;
      }
      
      public function set polaroidImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2112922897polaroidImage;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2112922897polaroidImage = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
   }
}

