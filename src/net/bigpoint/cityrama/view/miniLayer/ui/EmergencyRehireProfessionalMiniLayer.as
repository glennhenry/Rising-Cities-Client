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
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyRehireProfessionalMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PriceComponent;
   import net.bigpoint.cityrama.view.common.components.StatsProgressbar;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SideSpecialistSlotComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class EmergencyRehireProfessionalMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      public static const EP:String = "EP";
      
      public static const DEXTRO:String = "DEXTRO";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         EP = "EP";
         if(!_loc2_)
         {
            DEXTRO = "DEXTRO";
            if(_loc1_)
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
         }
      }
      
      private var _1016580566attributeOne:StatsProgressbar;
      
      private var _1971893150attributeThree:StatsProgressbar;
      
      private var _1016575472attributeTwo:StatsProgressbar;
      
      private var _1935219026bluePaper:BriskImageDynaLib;
      
      private var _94849606costs:PriceComponent;
      
      private var _443494924dextroButton:DynamicPlusButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _1002918665profSlot:SideSpecialistSlotComponent;
      
      private var _778037831rehireButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyRehireProfessionalMiniLayerVo;
      
      private var _dirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function EmergencyRehireProfessionalMiniLayer()
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
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr0040:
                     §§pop().§§slot[5] = null;
                     addr003f:
                     if(_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc4_)
                        {
                           addr0055:
                           this.mx_internal::_watchers = [];
                           if(!_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc3_ || _loc3_)
                                 {
                                    super();
                                    if(_loc3_)
                                    {
                                       addr0088:
                                       mx_internal::_document = this;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§push(§§newactivation());
                                          if(_loc3_)
                                          {
                                             §§pop().§§slot[1] = this._EmergencyRehireProfessionalMiniLayer_bindingsSetup();
                                             if(!_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         addr00dc:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  addr00fd:
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr0104:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_EmergencyRehireProfessionalMiniLayerWatcherSetupUtil");
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr0118:
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           addr0127:
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr014c:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return EmergencyRehireProfessionalMiniLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr0190:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                    {
                                                                                       addr01bf:
                                                                                       this.width = 540;
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01cb:
                                                                                          this.height = 313;
                                                                                          if(!(_loc4_ && _loc1_))
                                                                                          {
                                                                                             addr01df:
                                                                                             this.showAttentionSign = true;
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                this.mxmlContentFactory = new DeferredInstanceFromFunction(this._EmergencyRehireProfessionalMiniLayer_Array1_c);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr0207:
                                                                                                   this.addEventListener("creationComplete",this.___EmergencyRehireProfessionalMiniLayer_MiniLayerWindow1_creationComplete);
                                                                                                   if(_loc3_ || Boolean(this))
                                                                                                   {
                                                                                                      addr0222:
                                                                                                      i = 0;
                                                                                                      addr0220:
                                                                                                   }
                                                                                                }
                                                                                                var _temp_12:*;
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
                                                                                                            if(!(_loc3_ || _loc1_))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(_loc3_ || _loc1_)
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                while(var _temp_12:* = §§pop(), §§pop().§§slot[4] = _temp_12, !_loc4_);
                                                                                                
                                                                                                return;
                                                                                                addr028f:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0220);
                                                                                       }
                                                                                       §§goto(addr028f);
                                                                                    }
                                                                                    §§goto(addr01cb);
                                                                                 }
                                                                                 §§goto(addr01df);
                                                                              }
                                                                              §§goto(addr0207);
                                                                           }
                                                                           §§goto(addr0190);
                                                                        }
                                                                        §§goto(addr0222);
                                                                     }
                                                                     §§goto(addr0190);
                                                                  }
                                                                  §§goto(addr0127);
                                                               }
                                                               §§goto(addr028f);
                                                            }
                                                         }
                                                         §§goto(addr014c);
                                                      }
                                                      §§goto(addr0222);
                                                   }
                                                   §§goto(addr01cb);
                                                }
                                                §§goto(addr0222);
                                             }
                                             §§goto(addr014c);
                                          }
                                          §§goto(addr0104);
                                       }
                                       §§goto(addr028f);
                                    }
                                    §§goto(addr0207);
                                 }
                                 §§goto(addr00fd);
                              }
                              §§goto(addr0088);
                           }
                           §§goto(addr0118);
                        }
                        §§goto(addr01bf);
                     }
                     §§goto(addr0055);
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr0207);
            }
            §§goto(addr0040);
         }
         §§goto(addr003f);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            EmergencyRehireProfessionalMiniLayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               addr002e:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr002e);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      public function setData(param1:EmergencyRehireProfessionalMiniLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(_loc3_ || Boolean(this))
               {
                  this._dirty = true;
                  if(!_loc2_)
                  {
                     addr004c:
                     this._data = param1;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr005e:
                        this.invalidateProperties();
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr005e);
            }
            addr0062:
            return;
         }
         §§goto(addr004c);
      }
      
      private function handleOkClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new Event(EP));
         }
      }
      
      private function handleDextroClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            dispatchEvent(new Event(DEXTRO));
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.commitProperties();
            if(!(_loc1_ && _loc2_))
            {
               §§push(this._dirty);
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           addr0059:
                           §§pop();
                           if(_loc2_)
                           {
                              addr005f:
                              §§push(this._data);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§push(§§pop() == null);
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc1_)
                                    {
                                       §§goto(addr0085);
                                    }
                                    §§goto(addr019b);
                                 }
                                 §§goto(addr0085);
                              }
                              §§goto(addr0147);
                           }
                           §§goto(addr010e);
                        }
                        §§goto(addr019b);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0059);
               }
               addr0085:
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     this._dirty = false;
                     if(_loc2_)
                     {
                        this.title = this._data.title;
                        if(_loc2_ || _loc2_)
                        {
                           this.header.text = this._data.header;
                           if(_loc2_)
                           {
                              addr00c2:
                              this.flavourText.text = this._data.flavourText;
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§push(this.rehireButton);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§pop().label = this._data.buttonText;
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       addr010e:
                                       this.infoLabel.text = StringUtil.substitute(this._data.instantFinishText,this._data.instantDextroCosts);
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr0136:
                                          §§push(this._data);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr0147:
                                             §§push(§§pop().hasEnoughDextro);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      addr0160:
                                                      §§push(this.dextroButton);
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         §§pop().showPlus = true;
                                                         if(!(_loc1_ && Boolean(this)))
                                                         {
                                                            addr0186:
                                                            this.dextroButton.toolTip = this._data.instantFinishToolTipBad;
                                                            addr0182:
                                                            if(!_loc1_)
                                                            {
                                                               addr0194:
                                                               addr019b:
                                                               addr0198:
                                                               if(!this._data.hasEnoughEp)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     addr01a8:
                                                                     this.rehireButton.enabled = false;
                                                                     addr01a4:
                                                                     if(!_loc1_)
                                                                     {
                                                                        addr01b1:
                                                                        §§push(this.costs);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§pop().affordable = this._data.hasEnoughEp;
                                                                           if(_loc2_ || Boolean(this))
                                                                           {
                                                                              addr01d5:
                                                                              this.costs.priceLabel = LocaUtils.getThousendSeperatedNumber(this._data.epCosts);
                                                                              addr01d1:
                                                                              if(!_loc1_)
                                                                              {
                                                                                 §§push(this.profSlot);
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    §§pop().data = this._data.professionalSlotVo;
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       §§goto(addr0217);
                                                                                    }
                                                                                    §§goto(addr0222);
                                                                                 }
                                                                                 addr0217:
                                                                                 this.profSlot.enableNameDisplay(false);
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    addr0222:
                                                                                    this.updateAttributeProgressBars();
                                                                                 }
                                                                                 §§goto(addr0228);
                                                                              }
                                                                              §§goto(addr0222);
                                                                           }
                                                                           §§goto(addr0228);
                                                                        }
                                                                        §§goto(addr01d5);
                                                                     }
                                                                  }
                                                                  §§goto(addr0228);
                                                               }
                                                               §§goto(addr01b1);
                                                            }
                                                            §§goto(addr01d1);
                                                         }
                                                         §§goto(addr01b1);
                                                      }
                                                      §§goto(addr0186);
                                                   }
                                                   §§goto(addr01a4);
                                                }
                                                §§goto(addr0194);
                                             }
                                             §§goto(addr019b);
                                          }
                                          §§goto(addr0198);
                                       }
                                       §§goto(addr01d1);
                                    }
                                    §§goto(addr0136);
                                 }
                                 §§goto(addr01a8);
                              }
                              §§goto(addr010e);
                           }
                           §§goto(addr01b1);
                        }
                        §§goto(addr0182);
                     }
                     §§goto(addr0160);
                  }
                  §§goto(addr00c2);
               }
               addr0228:
               return;
            }
            §§goto(addr0194);
         }
         §§goto(addr005f);
      }
      
      private function updateAttributeProgressBars() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.attributeOne);
            if(!_loc1_)
            {
               §§pop().styleName = ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY;
               if(_loc2_)
               {
                  §§push(this.attributeOne);
                  if(_loc2_ || _loc2_)
                  {
                     addr0045:
                     §§pop().progressbar.percentWidth = this._data.efficencyProgress;
                     if(!_loc1_)
                     {
                        addr005a:
                        addr0056:
                        §§push(this.attributeOne.plusButton);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(false);
                           if(!_loc1_)
                           {
                              §§pop().includeInLayout = §§pop();
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(this.attributeTwo);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§pop().styleName = ServerProfessionalConstants.ATTRIBUTE_LUCK;
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(this.attributeTwo);
                                       if(!_loc1_)
                                       {
                                          addr00b8:
                                          §§pop().progressbar.percentWidth = this._data.luckProgress;
                                          if(_loc2_)
                                          {
                                             addr00cd:
                                             addr00c9:
                                             §§push(this.attributeTwo.plusButton);
                                             if(_loc2_)
                                             {
                                                addr00d5:
                                                §§push(false);
                                                if(!(_loc1_ && Boolean(this)))
                                                {
                                                   addr00e3:
                                                   §§pop().includeInLayout = §§pop();
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      addr00f2:
                                                      §§push(this.attributeThree);
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         §§pop().styleName = ServerProfessionalConstants.ATTRIBUTE_PERCEPTION;
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            §§push(this.attributeThree);
                                                            if(_loc2_)
                                                            {
                                                               §§pop().progressbar.percentWidth = this._data.perceptionProgress;
                                                               if(!_loc1_)
                                                               {
                                                                  addr0144:
                                                                  this.attributeThree.plusButton.includeInLayout = false;
                                                                  addr0140:
                                                                  addr013c:
                                                                  addr0143:
                                                               }
                                                               §§goto(addr0146);
                                                            }
                                                            §§goto(addr0140);
                                                         }
                                                         §§goto(addr0146);
                                                      }
                                                      §§goto(addr0140);
                                                   }
                                                   §§goto(addr013c);
                                                }
                                                §§goto(addr0144);
                                             }
                                             §§goto(addr0143);
                                          }
                                          §§goto(addr013c);
                                       }
                                       §§goto(addr00cd);
                                    }
                                    addr0146:
                                    return;
                                 }
                                 §§goto(addr00b8);
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr00e3);
                        }
                        §§goto(addr00d5);
                     }
                     §§goto(addr00f2);
                  }
                  §§goto(addr005a);
               }
               §§goto(addr00c9);
            }
            §§goto(addr0045);
         }
         §§goto(addr0056);
      }
      
      protected function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.rehireButton.addEventListener(MouseEvent.CLICK,this.handleOkClick);
            if(_loc2_)
            {
               this.dextroButton.addEventListener(MouseEvent.CLICK,this.handleDextroClick);
            }
         }
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_Array1_c() : Array
      {
         return [this._EmergencyRehireProfessionalMiniLayer_Group1_c(),this._EmergencyRehireProfessionalMiniLayer_Group5_c()];
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               §§goto(addr0040);
            }
            §§goto(addr006e);
         }
         addr0040:
         _loc1_.percentHeight = 100;
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_HGroup1_c()];
            if(_loc3_)
            {
               addr006e:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr007a:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr007e);
            }
            §§goto(addr007a);
         }
         addr007e:
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.left = 12;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  §§goto(addr0054);
               }
               §§goto(addr0072);
            }
            addr0054:
            _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_Group2_c(),this._EmergencyRehireProfessionalMiniLayer_VGroup3_c()];
            if(_loc3_ || Boolean(this))
            {
               addr0072:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0082);
         }
         addr0082:
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 50;
            if(_loc2_)
            {
               _loc1_.left = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_ || Boolean(this))
                  {
                     addr006f:
                     _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_BriskImageDynaLib1_i(),this._EmergencyRehireProfessionalMiniLayer_VGroup1_c()];
                     if(!(_loc3_ && _loc3_))
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
                  §§goto(addr009d);
               }
            }
            §§goto(addr006f);
         }
         addr009d:
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "postit_blue_small";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.left = 5;
                  if(_loc3_)
                  {
                     addr0059:
                     _loc1_.top = -15;
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr0095);
                  }
               }
               addr0077:
               _loc1_.width = 204;
               if(!_loc2_)
               {
                  _loc1_.height = 251;
                  if(_loc3_ || _loc2_)
                  {
                     addr0095:
                     _loc1_.id = "bluePaper";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr00c0:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr00d1);
                              }
                              §§goto(addr00db);
                           }
                        }
                        §§goto(addr00d1);
                     }
                     §§goto(addr00db);
                  }
                  addr00d1:
                  this.bluePaper = _loc1_;
                  if(!_loc2_)
                  {
                     addr00db:
                     BindingManager.executeBindings(this,"bluePaper",this.bluePaper);
                  }
                  §§goto(addr00e8);
               }
               addr00e8:
               return _loc1_;
            }
            §§goto(addr00c0);
         }
         §§goto(addr0059);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               addr0034:
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.top = 35;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_SideSpecialistSlotComponent1_i(),this._EmergencyRehireProfessionalMiniLayer_VGroup2_c()];
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0084:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0084);
               }
            }
            addr009c:
            return _loc1_;
         }
         §§goto(addr0034);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_SideSpecialistSlotComponent1_i() : SideSpecialistSlotComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SideSpecialistSlotComponent = new SideSpecialistSlotComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  §§goto(addr004b);
               }
               §§goto(addr0088);
            }
            §§goto(addr0069);
         }
         addr004b:
         _loc1_.id = "profSlot";
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr0069:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     addr007e:
                     this.profSlot = _loc1_;
                     if(_loc2_)
                     {
                        addr0088:
                        BindingManager.executeBindings(this,"profSlot",this.profSlot);
                     }
                  }
               }
               §§goto(addr0095);
            }
            §§goto(addr007e);
         }
         addr0095:
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.gap = -1;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.paddingLeft = 15;
                     if(!_loc3_)
                     {
                        _loc1_.paddingRight = 30;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr007e);
                        }
                     }
                     §§goto(addr00ca);
                  }
                  addr007e:
                  _loc1_.top = -15;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_StatsProgressbar1_i(),this._EmergencyRehireProfessionalMiniLayer_StatsProgressbar2_i(),this._EmergencyRehireProfessionalMiniLayer_StatsProgressbar3_i()];
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr00be);
                     }
                     §§goto(addr00ca);
                  }
                  addr00be:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr00ca:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00ce);
               }
               addr00ce:
               return _loc1_;
            }
         }
         §§goto(addr00be);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_StatsProgressbar1_i() : StatsProgressbar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               addr002e:
               _loc1_.enableDividerGroup = false;
               if(!_loc2_)
               {
                  §§goto(addr0044);
               }
               §§goto(addr008c);
            }
            addr0044:
            _loc1_.enablePlusClick = false;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.id = "attributeOne";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr0082);
                        }
                        §§goto(addr008c);
                     }
                  }
               }
            }
            addr0082:
            this.attributeOne = _loc1_;
            if(_loc3_)
            {
               addr008c:
               BindingManager.executeBindings(this,"attributeOne",this.attributeOne);
            }
            return _loc1_;
         }
         §§goto(addr002e);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_StatsProgressbar2_i() : StatsProgressbar
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.enableDividerGroup = false;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.enablePlusClick = false;
                  if(!_loc3_)
                  {
                     _loc1_.id = "attributeTwo";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0065:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0090:
                                 this.attributeTwo = _loc1_;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00a2:
                                    BindingManager.executeBindings(this,"attributeTwo",this.attributeTwo);
                                 }
                              }
                              §§goto(addr00af);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0090);
                     }
                  }
               }
               addr00af:
               return _loc1_;
            }
            §§goto(addr0065);
         }
         §§goto(addr00a2);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_StatsProgressbar3_i() : StatsProgressbar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.enableDividerGroup = false;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.enablePlusClick = false;
                  if(!_loc2_)
                  {
                     addr005f:
                     _loc1_.id = "attributeThree";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007e:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr009c:
                                 this.attributeThree = _loc1_;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00ae:
                                    BindingManager.executeBindings(this,"attributeThree",this.attributeThree);
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00ae);
                           }
                           §§goto(addr00bb);
                        }
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr007e);
            }
            addr00bb:
            return _loc1_;
         }
         §§goto(addr005f);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 50;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.paddingTop = 50;
                  if(_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        _loc1_.right = 0;
                        if(_loc2_ || _loc3_)
                        {
                           addr0083:
                           _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_Group3_c(),this._EmergencyRehireProfessionalMiniLayer_HGroup3_c()];
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr00a1);
                           }
                           §§goto(addr00ad);
                        }
                        addr00a1:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr00ad:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr0083);
               }
               addr00b1:
               return _loc1_;
            }
            §§goto(addr0083);
         }
         §§goto(addr00ad);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               §§goto(addr0043);
            }
            §§goto(addr006f);
         }
         addr0043:
         _loc1_.height = 124;
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_StickyNoteComponent1_c(),this._EmergencyRehireProfessionalMiniLayer_VGroup4_c()];
            if(_loc3_)
            {
               §§goto(addr0063);
            }
            §§goto(addr006f);
         }
         addr0063:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr006f:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.tapeLeft = true;
                  addr003f:
                  if(!_loc2_)
                  {
                     addr0054:
                     _loc1_.tapeRight = true;
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0072:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr0072);
            }
            §§goto(addr0054);
         }
         §§goto(addr003f);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.gap = 5;
                     addr003d:
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr005d:
                        _loc1_.paddingTop = 20;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_LocaLabel1_i(),this._EmergencyRehireProfessionalMiniLayer_BriskImageDynaLib2_c(),this._EmergencyRehireProfessionalMiniLayer_HGroup2_c()];
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr009e);
                           }
                           §§goto(addr00aa);
                        }
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr005d);
               }
               addr009e:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr00aa:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr005d);
         }
         §§goto(addr003d);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.text = "Dev: Awesome Headline";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.styleName = "residentialOutputHeader";
               if(!_loc2_)
               {
                  addr0049:
                  _loc1_.id = "header";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0086:
                              this.header = _loc1_;
                              if(!_loc2_)
                              {
                                 addr0090:
                                 BindingManager.executeBindings(this,"header",this.header);
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr0090);
                        }
                        addr009d:
                        return _loc1_;
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0090);
               }
            }
            §§goto(addr0086);
         }
         §§goto(addr0049);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               §§goto(addr0039);
            }
            §§goto(addr0058);
         }
         addr0039:
         _loc1_.dynaBmpSourceName = "head_line";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc2_)
               {
                  addr0058:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr005e:
                     _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_PriceComponent1_i()];
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr0082:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0082);
            }
            addr0086:
            return _loc1_;
         }
         §§goto(addr005e);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_PriceComponent1_i() : PriceComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PriceComponent = new PriceComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.id = "costs";
               if(_loc3_ || _loc2_)
               {
                  addr0057:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr006c);
                        }
                     }
                     §§goto(addr0076);
                  }
                  addr006c:
                  this.costs = _loc1_;
                  if(!_loc2_)
                  {
                     addr0076:
                     BindingManager.executeBindings(this,"costs",this.costs);
                  }
                  §§goto(addr0083);
               }
               addr0083:
               return _loc1_;
            }
         }
         §§goto(addr0057);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.width = 250;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_Group4_c(),this._EmergencyRehireProfessionalMiniLayer_DynamicPlusButton1_i()];
               if(_loc2_ || Boolean(this))
               {
                  addr0065:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0065);
         }
         addr0075:
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_LocaLabel2_i(),this._EmergencyRehireProfessionalMiniLayer_MultistateButton1_i()];
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0072:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr007e:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr007e);
            }
            addr0082:
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_LocaLabel2_i() : LocaLabel
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
               _loc1_.styleName = "residentialProgressComment";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.text = "Dev: Kauf mich";
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc3_)
                     {
                        _loc1_.verticalCenter = 0;
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.id = "infoLabel";
                           if(_loc2_)
                           {
                              addr0082:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr009b:
                                    _loc1_.document = this;
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§goto(addr00ac);
                                    }
                                    §§goto(addr00b6);
                                 }
                              }
                              addr00ac:
                              this.infoLabel = _loc1_;
                              if(_loc2_)
                              {
                                 addr00b6:
                                 BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                              }
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr00ac);
                  }
                  addr00c3:
                  return _loc1_;
               }
            }
            §§goto(addr00ac);
         }
         §§goto(addr009b);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.label = "Dev: Starten";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "rehireButton";
                        if(_loc3_)
                        {
                           addr0088:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00a0:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00a9:
                                    this.rehireButton = _loc1_;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       BindingManager.executeBindings(this,"rehireButton",this.rehireButton);
                                    }
                                 }
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr00c8);
               }
            }
            §§goto(addr0088);
         }
         addr00c8:
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_DynamicPlusButton1_i() : DynamicPlusButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 40;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.iconImageName = "btn_icon_dextro";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0052:
                  _loc1_.iconLibName = "gui_popups_schoolBook";
                  if(_loc2_)
                  {
                     _loc1_.showSparkle = true;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                        addr0070:
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.addEventListener("mouseOver",this.__dextroButton_mouseOver);
                           if(!(_loc3_ && _loc2_))
                           {
                              addr00ab:
                              _loc1_.addEventListener("mouseOut",this.__dextroButton_mouseOut);
                              if(_loc2_ || _loc2_)
                              {
                                 _loc1_.id = "dextroButton";
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr00ed:
                                          _loc1_.document = this;
                                          if(!_loc3_)
                                          {
                                             §§goto(addr00f6);
                                          }
                                       }
                                       §§goto(addr0100);
                                    }
                                    addr00f6:
                                    this.dextroButton = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr0100:
                                       BindingManager.executeBindings(this,"dextroButton",this.dextroButton);
                                    }
                                    §§goto(addr010d);
                                 }
                                 §§goto(addr00ed);
                              }
                           }
                           addr010d:
                           return _loc1_;
                        }
                        §§goto(addr00ab);
                     }
                  }
                  §§goto(addr0100);
               }
               §§goto(addr0070);
            }
            §§goto(addr0100);
         }
         §§goto(addr0052);
      }
      
      public function __dextroButton_mouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.rehireButton.visible = false;
            if(_loc2_ || Boolean(param1))
            {
               this.infoLabel.visible = true;
            }
         }
      }
      
      public function __dextroButton_mouseOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.rehireButton.visible = true;
            if(!_loc3_)
            {
               this.infoLabel.visible = false;
            }
         }
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.top = -17;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_BriskImageDynaLib3_c(),this._EmergencyRehireProfessionalMiniLayer_LocaLabel3_i()];
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr007e);
                  }
               }
               §§goto(addr008a);
            }
         }
         addr007e:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr008a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "bubble_small";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.left = 0;
                  if(!_loc3_)
                  {
                     _loc1_.mouseChildren = false;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr007b);
                     }
                  }
                  §§goto(addr008d);
               }
               addr007b:
               _loc1_.mouseEnabled = false;
               if(!(_loc3_ && _loc3_))
               {
                  addr008d:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr009d);
            }
            addr009d:
            return _loc1_;
         }
         §§goto(addr007b);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.text = "Dev: Awesome Headline";
            if(_loc3_)
            {
               addr002b:
               _loc1_.width = 436;
               if(_loc3_)
               {
                  _loc1_.height = 34;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr005a:
                        _loc1_.horizontalCenter = 0;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr006c:
                           _loc1_.styleName = "optionsLabel";
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr0089);
                           }
                        }
                        §§goto(addr00a1);
                     }
                     addr0089:
                     _loc1_.left = -10;
                     if(_loc3_)
                     {
                        _loc1_.setStyle("textAlign","center");
                        if(!_loc2_)
                        {
                           addr00a1:
                           _loc1_.setStyle("paddingRight",10);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr00b7:
                              _loc1_.setStyle("paddingTop",-5);
                              if(!_loc2_)
                              {
                                 _loc1_.id = "flavourText";
                                 if(_loc3_)
                                 {
                                    addr00d0:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00e4:
                                          _loc1_.document = this;
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§goto(addr0102);
                                          }
                                          §§goto(addr0114);
                                       }
                                    }
                                    §§goto(addr0102);
                                 }
                                 §§goto(addr00e4);
                              }
                              addr0102:
                              this.flavourText = _loc1_;
                              if(_loc3_ || _loc3_)
                              {
                                 addr0114:
                                 BindingManager.executeBindings(this,"flavourText",this.flavourText);
                              }
                              §§goto(addr0121);
                           }
                           §§goto(addr0114);
                        }
                        §§goto(addr00d0);
                     }
                     addr0121:
                     return _loc1_;
                  }
                  §§goto(addr005a);
               }
               §§goto(addr006c);
            }
            §§goto(addr00b7);
         }
         §§goto(addr002b);
      }
      
      public function ___EmergencyRehireProfessionalMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && _loc3_))
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(_loc2_)
               {
                  §§goto(addr0050);
               }
               §§goto(addr0075);
            }
            §§goto(addr0073);
         }
         addr0050:
         §§push(§§pop().§§slot[1]);
         if(!(_loc3_ && _loc3_))
         {
            §§pop()[0] = new Binding(this,function():String
            {
               var _loc1_:* = ServerResConst.RESOURCE_EDUCATIONPOINTS;
               return _loc1_ == undefined ? null : String(_loc1_);
            },null,"costs.currencyType");
            addr0075:
            addr0073:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attributeOne() : StatsProgressbar
      {
         return this._1016580566attributeOne;
      }
      
      public function set attributeOne(param1:StatsProgressbar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1016580566attributeOne;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1016580566attributeOne = param1;
                  addr0041:
                  if(_loc4_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0071);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attributeOne",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get attributeThree() : StatsProgressbar
      {
         return this._1971893150attributeThree;
      }
      
      public function set attributeThree(param1:StatsProgressbar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1971893150attributeThree;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1971893150attributeThree = param1;
                  if(_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attributeThree",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get attributeTwo() : StatsProgressbar
      {
         return this._1016575472attributeTwo;
      }
      
      public function set attributeTwo(param1:StatsProgressbar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1016575472attributeTwo;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1016575472attributeTwo = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attributeTwo",_loc2_,param1));
                        }
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr0051);
               }
            }
            addr0060:
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable(event="propertyChange")]
      public function get bluePaper() : BriskImageDynaLib
      {
         return this._1935219026bluePaper;
      }
      
      public function set bluePaper(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1935219026bluePaper;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1935219026bluePaper = param1;
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0076);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bluePaper",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get costs() : PriceComponent
      {
         return this._94849606costs;
      }
      
      public function set costs(param1:PriceComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._94849606costs;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._94849606costs = param1;
                  addr0037:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costs",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get dextroButton() : DynamicPlusButton
      {
         return this._443494924dextroButton;
      }
      
      public function set dextroButton(param1:DynamicPlusButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._443494924dextroButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._443494924dextroButton = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dextroButton",_loc2_,param1));
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
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._800887486flavourText;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._800887486flavourText = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0068);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr0058);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1221270899header = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr007c);
               }
               addr0064:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr007c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                  }
               }
               §§goto(addr008b);
            }
            addr008b:
            return;
         }
         §§goto(addr007c);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1213523686infoLabel;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1213523686infoLabel = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0055);
            }
            addr0074:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get profSlot() : SideSpecialistSlotComponent
      {
         return this._1002918665profSlot;
      }
      
      public function set profSlot(param1:SideSpecialistSlotComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1002918665profSlot;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1002918665profSlot = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"profSlot",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get rehireButton() : MultistateButton
      {
         return this._778037831rehireButton;
      }
      
      public function set rehireButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._778037831rehireButton;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._778037831rehireButton = param1;
                  addr0047:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rehireButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0066);
            }
            addr0084:
            return;
         }
         §§goto(addr0047);
      }
   }
}

