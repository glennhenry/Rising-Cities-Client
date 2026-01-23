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
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementInfoMiniLayerComponentVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.miniLayer.ImprovementExpiredMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.ImprovementInfoMiniLayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ImprovementExpiredMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      public static const OPEN_TREASURY:String = "OPEN_TREASURY";
      
      public static const RENEW_IMPROVEMENT:String = "RENEW_IMPROVEMENT";
      
      public static const REMOVE_IMPROVEMENT:String = "REMOVE_IMPROVEMENT";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         OPEN_TREASURY = "OPEN_TREASURY";
         if(_loc1_ || _loc1_)
         {
            RENEW_IMPROVEMENT = "RENEW_IMPROVEMENT";
            if(_loc1_)
            {
               REMOVE_IMPROVEMENT = "REMOVE_IMPROVEMENT";
               if(_loc1_)
               {
                  addr0063:
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
               §§goto(addr0087);
            }
            §§goto(addr0063);
         }
      }
      addr0087:
      
      private var _1245745987deleteButton:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _2062861329infoComponent:ImprovementInfoMiniLayerComponent;
      
      private var _1851539487renewButton:MultistateButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementExpiredMiniLayer()
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
         if(!_loc4_)
         {
            §§push(null);
            if(_loc3_ || _loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_ || _loc2_)
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr004f:
                     §§pop().§§slot[5] = null;
                     if(!_loc4_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc3_ || _loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr009f:
                                    super();
                                    if(_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§pop().§§slot[1] = this._ImprovementExpiredMiniLayer_bindingsSetup();
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   addr00ef:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_)
                                                         {
                                                            addr0114:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  addr012a:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     addr013a:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_ImprovementExpiredMiniLayerWatcherSetupUtil");
                                                                     if(_loc3_)
                                                                     {
                                                                        addr0159:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc4_ && Boolean(this)))
                                                                        {
                                                                           addr0169:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr0180:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ImprovementExpiredMiniLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       this.width = 540;
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          addr0205:
                                                                                          this.height = 313;
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr0210:
                                                                                             this.showAttentionSign = true;
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                addr0222:
                                                                                                this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ImprovementExpiredMiniLayer_Array1_c);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr0237:
                                                                                                   this.addEventListener("creationComplete",this.___ImprovementExpiredMiniLayer_MiniLayerWindow1_creationComplete);
                                                                                                   if(!(_loc4_ && _loc1_))
                                                                                                   {
                                                                                                      addr0253:
                                                                                                      i = 0;
                                                                                                      addr0251:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          var _temp_19:*;
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
                                                                                                      if(!(_loc3_ || _loc3_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(!(_loc4_ && _loc1_))
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc3_)
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
                                                                                          while(var _temp_19:* = §§pop(), §§pop().§§slot[4] = _temp_19, !_loc4_);
                                                                                          
                                                                                          return;
                                                                                          addr02ca:
                                                                                       }
                                                                                       §§goto(addr0210);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr0205);
                                                                           }
                                                                           §§goto(addr0222);
                                                                        }
                                                                        §§goto(addr0253);
                                                                     }
                                                                     §§goto(addr0237);
                                                                  }
                                                                  §§goto(addr0169);
                                                               }
                                                               §§goto(addr0210);
                                                            }
                                                            §§goto(addr0180);
                                                         }
                                                         §§goto(addr02ca);
                                                      }
                                                      §§goto(addr0169);
                                                   }
                                                   §§goto(addr0159);
                                                }
                                                §§goto(addr013a);
                                             }
                                             §§goto(addr0114);
                                          }
                                          §§goto(addr0253);
                                       }
                                       §§goto(addr02ca);
                                    }
                                    §§goto(addr0114);
                                 }
                                 §§goto(addr0237);
                              }
                              §§goto(addr0251);
                           }
                           §§goto(addr012a);
                        }
                        §§goto(addr0180);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00ef);
               }
               §§goto(addr0237);
            }
            §§goto(addr004f);
         }
         §§goto(addr0169);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            ImprovementExpiredMiniLayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0054);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr0054:
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            title = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.expired.title.capital");
            if(_loc3_ || Boolean(param1))
            {
               this.flavourText.text = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.expired.flavour");
               if(!(_loc2_ && Boolean(param1)))
               {
                  §§push(this.renewButton);
                  if(_loc3_ || Boolean(param1))
                  {
                     §§push(LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.btn.renew.capital"));
                     if(!(_loc2_ && _loc3_))
                     {
                        §§pop().label = §§pop();
                        if(!_loc2_)
                        {
                           addr00a9:
                           this.renewButton.toolTip = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.btn.renew.tooltip");
                           addr009d:
                           addr0099:
                           if(!_loc2_)
                           {
                              addr00b0:
                              §§push(this.deleteButton);
                              if(!(_loc2_ && Boolean(param1)))
                              {
                                 §§push(LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.expired.btn.remove.capital"));
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    §§pop().label = §§pop();
                                    if(!_loc2_)
                                    {
                                       addr00ff:
                                       this.deleteButton.toolTip = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.expired.btn.remove.tooltip");
                                       addr00f3:
                                       addr00ef:
                                    }
                                    §§goto(addr0101);
                                 }
                                 §§goto(addr00ff);
                              }
                              §§goto(addr00f3);
                           }
                           §§goto(addr00ef);
                        }
                        addr0101:
                        return;
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr00b0);
            }
            §§goto(addr0099);
         }
         §§goto(addr00b0);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ImprovementInfoMiniLayerComponentVo = null;
         if(_loc2_ || _loc3_)
         {
            super.commitProperties();
            if(!_loc3_)
            {
               §§push(this._data);
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(_loc2_ || _loc2_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           §§pop();
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§push(this._isDirty);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§push(§§pop());
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§goto(addr0085);
                                 }
                              }
                              §§goto(addr013c);
                           }
                           §§goto(addr014d);
                        }
                        §§goto(addr013c);
                     }
                     addr0085:
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           this._isDirty = false;
                           if(!_loc3_)
                           {
                              addr0098:
                              §§push(this.renewButton);
                              if(!_loc3_)
                              {
                                 §§push(this._data);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§push(§§pop().renewalAffordable);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§pop().showSparkle = §§pop();
                                       if(!_loc3_)
                                       {
                                          addr00d7:
                                          §§push(this.renewButton);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr00e8:
                                             §§push(this._data);
                                             if(!_loc3_)
                                             {
                                                addr00fa:
                                                addr00f1:
                                                §§push(§§pop().renewalAffordable);
                                                if(!_loc3_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                §§pop().showPlus = §§pop();
                                                if(_loc2_ || Boolean(_loc1_))
                                                {
                                                   §§push(this.renewButton);
                                                   if(_loc2_ || Boolean(_loc1_))
                                                   {
                                                      addr011f:
                                                      §§pop().priceToConfirm = this._data.improvementVo.renewalPrice;
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         §§goto(addr0135);
                                                      }
                                                      §§goto(addr014d);
                                                   }
                                                   §§goto(addr0151);
                                                }
                                                §§goto(addr0135);
                                             }
                                             §§goto(addr011f);
                                          }
                                          §§goto(addr0151);
                                       }
                                       §§goto(addr0135);
                                    }
                                    §§goto(addr00fa);
                                 }
                                 §§goto(addr00f1);
                              }
                              §§goto(addr00e8);
                           }
                           addr0135:
                           addr013c:
                           addr0139:
                           if(this._data.renewalAffordable)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0151:
                                 this.renewButton.addEventListener(MouseEvent.MOUSE_OVER,this.onRenewRollOver);
                                 addr014d:
                              }
                           }
                           _loc1_ = new ImprovementInfoMiniLayerComponentVo();
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.state = ImprovementInfoMiniLayerComponentVo.STATE_EXPIRED;
                              if(_loc2_)
                              {
                                 _loc1_.improvementVo = this._data.improvementVo;
                                 if(!_loc3_)
                                 {
                                    this.infoComponent.data = _loc1_;
                                 }
                              }
                           }
                           §§goto(addr01a8);
                        }
                        §§goto(addr00d7);
                     }
                     addr01a8:
                     return;
                  }
                  §§goto(addr013c);
               }
               §§goto(addr0139);
            }
            §§goto(addr014d);
         }
         §§goto(addr0098);
      }
      
      private function onRenewRollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.renewButton);
            if(!(_loc2_ && Boolean(this)))
            {
               §§pop().removeEventListener(MouseEvent.MOUSE_OVER,this.onRenewRollOver);
               if(_loc3_)
               {
                  §§push(this.renewButton);
                  if(_loc3_ || _loc3_)
                  {
                     §§pop().addEventListener(MouseEvent.MOUSE_OUT,this.onRenewRollOut);
                     if(_loc3_ || Boolean(this))
                     {
                        addr0081:
                        this.renewButton.label = LocaUtils.getThousendSeperatedNumber(this._data.improvementVo.renewalPrice);
                        addr007d:
                     }
                     return;
                  }
                  §§goto(addr0081);
               }
               §§goto(addr007d);
            }
            §§goto(addr0081);
         }
         §§goto(addr007d);
      }
      
      private function onRenewRollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(this.renewButton);
            if(_loc3_ || _loc3_)
            {
               §§pop().removeEventListener(MouseEvent.MOUSE_OUT,this.onRenewRollOut);
               if(_loc3_)
               {
                  addr005a:
                  §§push(this.renewButton);
                  if(_loc3_ || _loc3_)
                  {
                     addr006b:
                     §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.onRenewRollOver);
                     if(_loc3_)
                     {
                        addr0080:
                        this.renewButton.label = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.btn.renew.capital");
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0080);
               }
               addr008e:
               return;
            }
            §§goto(addr006b);
         }
         §§goto(addr005a);
      }
      
      public function set data(param1:ImprovementMiniLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._data = param1;
            if(_loc2_)
            {
               this._isDirty = true;
               if(_loc2_ || _loc3_)
               {
                  invalidateProperties();
               }
            }
         }
      }
      
      private function handleRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            dispatchEvent(new Event(REMOVE_IMPROVEMENT,true,true));
         }
      }
      
      private function handleRenew() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this.renewButton.showPlus)
            {
               if(_loc1_ || Boolean(this))
               {
                  dispatchEvent(new Event(OPEN_TREASURY,true,true));
                  if(_loc2_ && _loc1_)
                  {
                  }
               }
            }
            else
            {
               dispatchEvent(new Event(RENEW_IMPROVEMENT,true,true));
            }
         }
      }
      
      private function _ImprovementExpiredMiniLayer_Array1_c() : Array
      {
         return [this._ImprovementExpiredMiniLayer_VGroup1_c(),this._ImprovementExpiredMiniLayer_UiInfolayerAlignmentLine1_i()];
      }
      
      private function _ImprovementExpiredMiniLayer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr003c:
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     addr0053:
                     _loc1_.verticalAlign = "top";
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.gap = -11;
                        if(_loc2_)
                        {
                           _loc1_.mxmlContent = [this._ImprovementExpiredMiniLayer_HGroup1_c(),this._ImprovementExpiredMiniLayer_ImprovementInfoMiniLayerComponent1_i(),this._ImprovementExpiredMiniLayer_Group1_c(),this._ImprovementExpiredMiniLayer_HGroup2_c()];
                           §§goto(addr006f);
                        }
                     }
                     §§goto(addr00b2);
                  }
                  addr006f:
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00b2:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00b6);
               }
               addr00b6:
               return _loc1_;
            }
            §§goto(addr0053);
         }
         §§goto(addr003c);
      }
      
      private function _ImprovementExpiredMiniLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 90;
            if(!(_loc3_ && _loc3_))
            {
               addr0030:
               _loc1_.height = 50;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0081);
            }
            addr005a:
            _loc1_.horizontalAlign = "center";
            if(!_loc3_)
            {
               addr0071:
               _loc1_.mxmlContent = [this._ImprovementExpiredMiniLayer_LocaLabel1_i()];
               if(_loc2_)
               {
                  addr0081:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0095:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0095);
            }
            addr0099:
            return _loc1_;
         }
         §§goto(addr0030);
      }
      
      private function _ImprovementExpiredMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(!_loc2_)
               {
                  §§goto(addr0037);
               }
            }
            §§goto(addr008a);
         }
         addr0037:
         _loc1_.maxDisplayedLines = 2;
         if(_loc3_)
         {
            _loc1_.id = "flavourText";
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr008a:
                        this.flavourText = _loc1_;
                        if(_loc3_ || _loc3_)
                        {
                           addr009c:
                           BindingManager.executeBindings(this,"flavourText",this.flavourText);
                        }
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr008a);
            }
         }
         addr00a9:
         return _loc1_;
      }
      
      private function _ImprovementExpiredMiniLayer_ImprovementInfoMiniLayerComponent1_i() : ImprovementInfoMiniLayerComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ImprovementInfoMiniLayerComponent = new ImprovementInfoMiniLayerComponent();
         if(!_loc2_)
         {
            _loc1_.id = "infoComponent";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr0059:
                        this.infoComponent = _loc1_;
                        if(_loc3_ || Boolean(this))
                        {
                           BindingManager.executeBindings(this,"infoComponent",this.infoComponent);
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0059);
            }
         }
         addr0078:
         return _loc1_;
      }
      
      private function _ImprovementExpiredMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.height = 16;
            if(!_loc3_)
            {
               addr0040:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      private function _ImprovementExpiredMiniLayer_HGroup2_c() : HGroup
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
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.gap = 14;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._ImprovementExpiredMiniLayer_MultistateButton1_i(),this._ImprovementExpiredMiniLayer_MultistateButton2_i()];
                     addr0052:
                     if(_loc3_ || Boolean(this))
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0090:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0094);
                     }
                  }
                  §§goto(addr0090);
               }
               addr0094:
               return _loc1_;
            }
            §§goto(addr0052);
         }
         §§goto(addr007c);
      }
      
      private function _ImprovementExpiredMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc2_)
         {
            _loc1_.width = 204;
            if(_loc3_ || _loc3_)
            {
               _loc1_.useConfirmation = true;
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr0045);
               }
               §§goto(addr00c7);
            }
            addr0045:
            _loc1_.imageNameLeft = "dd_button_icon";
            if(_loc3_ || _loc2_)
            {
               _loc1_.libNameLeft = "gui_resources_icons";
               if(!_loc2_)
               {
                  _loc1_.addEventListener("click",this.__renewButton_click);
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.id = "renewButton";
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr00a8);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr00c7);
            }
            addr00a8:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     §§goto(addr00bd);
                  }
               }
               §§goto(addr00c7);
            }
            addr00bd:
            this.renewButton = _loc1_;
            if(!_loc2_)
            {
               addr00c7:
               BindingManager.executeBindings(this,"renewButton",this.renewButton);
            }
            return _loc1_;
         }
         §§goto(addr00c7);
      }
      
      public function __renewButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleRenew();
         }
      }
      
      private function _ImprovementExpiredMiniLayer_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.width = 204;
            if(!_loc2_)
            {
               _loc1_.imageNameLeft = "icon_cancel";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.libNameLeft = "gui_popups_miniLayer";
                  if(_loc3_)
                  {
                     _loc1_.styleName = "abort";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.addEventListener("click",this.__deleteButton_click);
                        if(!_loc2_)
                        {
                           addr0086:
                           _loc1_.id = "deleteButton";
                           if(_loc3_)
                           {
                              addr0091:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00c3:
                                       this.deleteButton = _loc1_;
                                       if(!_loc2_)
                                       {
                                          BindingManager.executeBindings(this,"deleteButton",this.deleteButton);
                                       }
                                    }
                                 }
                                 §§goto(addr00da);
                              }
                              §§goto(addr00c3);
                           }
                        }
                        addr00da:
                        return _loc1_;
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr0086);
            }
         }
         §§goto(addr0091);
      }
      
      public function __deleteButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleRemove();
         }
      }
      
      private function _ImprovementExpiredMiniLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc3_)
         {
            _loc1_.left = 60;
            if(_loc3_ || _loc2_)
            {
               _loc1_.top = 58;
               if(_loc3_)
               {
                  _loc1_.right = 315;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "uiInfolayerAlignmentLine";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0071:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr009a:
                                 this.uiInfolayerAlignmentLine = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00a4:
                                    BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                                 }
                              }
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr0071);
            }
            addr00b1:
            return _loc1_;
         }
         §§goto(addr009a);
      }
      
      public function ___ImprovementExpiredMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _ImprovementExpiredMiniLayer_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr0043);
               }
               §§goto(addr00a5);
            }
            §§goto(addr007a);
         }
         addr0043:
         §§push(§§pop().§§slot[1]);
         if(!_loc2_)
         {
            §§push(0);
            if(!_loc2_)
            {
               §§pop()[§§pop()] = new Binding(this,function():uint
               {
                  return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
               },null,"uiInfolayerAlignmentLine.alignment");
               if(_loc3_ || _loc3_)
               {
                  addr007a:
                  §§push(§§newactivation());
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr00a7);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr00a3);
            }
            §§goto(addr0092);
         }
         addr00a7:
         §§push(§§pop().§§slot[1]);
         if(!_loc2_)
         {
            addr0092:
            §§pop()[1] = new Binding(this,function():uint
            {
               return ImprovementExpiredMiniLayerMediator.LINE_ID_0;
            },null,"uiInfolayerAlignmentLine.lineId");
            addr00a5:
            addr00a3:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get deleteButton() : MultistateButton
      {
         return this._1245745987deleteButton;
      }
      
      public function set deleteButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1245745987deleteButton;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004f:
                  this._1245745987deleteButton = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deleteButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._800887486flavourText;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0049:
                  this._800887486flavourText = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
               }
               §§goto(addr0063);
            }
            addr0072:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoComponent() : ImprovementInfoMiniLayerComponent
      {
         return this._2062861329infoComponent;
      }
      
      public function set infoComponent(param1:ImprovementInfoMiniLayerComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2062861329infoComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._2062861329infoComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get renewButton() : MultistateButton
      {
         return this._1851539487renewButton;
      }
      
      public function set renewButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1851539487renewButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1851539487renewButton = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"renewButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0070);
            }
         }
         addr007f:
      }
   }
}

