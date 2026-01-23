package net.bigpoint.cityrama.view.constructionLayer
{
   import com.greensock.TweenMax;
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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerMediator;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerStepVo;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerVo;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.cityrama.view.citysquare.ui.components.skins.VerticalScrollbarList;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ConstructionLayer extends PaperPopupWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "backButton":false,
            "tabBar":false,
            "sideMenu":false,
            "titleDisplay":false
         };
      }
      
      private var _2120349464constructionGfx:BriskImageDynaLib;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _1822366839instantBuyButton:MultistateButton;
      
      private var _2116181862itemGfx:BriskImageDynaLib;
      
      private var _188974544levelLabel:LocaLabel;
      
      private var _750240179scrollShadow:BriskImageDynaLib;
      
      private var _1428284810stepList:List;
      
      private var _501248986typeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ConstructionLayerVo;
      
      private var _dataDirty:Boolean;
      
      private var _hasInterval:Boolean;
      
      private var _intervalId:uint;
      
      private var _toolTipDirty:Boolean;
      
      private var _toolTipVisible:Boolean;
      
      private var _toolTipEvent:ToolTipEvent;
      
      private var _costs:Number;
      
      public function ConstructionLayer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               §§goto(addr0026);
            }
            §§goto(addr0040);
         }
         addr0026:
         mx_internal::_document = this;
         if(_loc2_ || Boolean(this))
         {
            addr0040:
            this.width = 775;
            if(!(_loc1_ && Boolean(this)))
            {
               this.height = 440;
               if(_loc2_ || Boolean(this))
               {
                  this.styleName = "tabbedConstruction";
                  if(!(_loc1_ && _loc1_))
                  {
                     this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ConstructionLayer_Array1_c);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§goto(addr00ab);
                     }
                  }
               }
               §§goto(addr00bc);
            }
         }
         addr00ab:
         this.addEventListener("creationComplete",this.___ConstructionLayer_PaperPopupWindow1_creationComplete);
         if(!_loc1_)
         {
            addr00bc:
            this.addEventListener("removedFromStage",this.___ConstructionLayer_PaperPopupWindow1_removedFromStage);
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr004a);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0056);
            }
            addr004a:
            return;
         }
         addr0056:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.addEventListener(ConstructionLayerMediator.START_STEP_NORMAL,this.stepStartedHandler);
            if(!(_loc2_ && _loc3_))
            {
               §§push(this.instantBuyButton);
               if(_loc3_)
               {
                  §§pop().addEventListener(ToolTipEvent.TOOL_TIP_SHOW,this.toolTipShowHandler);
                  if(_loc3_)
                  {
                     addr0073:
                     this.instantBuyButton.addEventListener(ToolTipEvent.TOOL_TIP_HIDE,this.toolTipHideHandler);
                     addr006f:
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0073);
            }
            §§goto(addr006f);
         }
         addr0082:
      }
      
      public function set data(param1:ConstructionLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._data = param1;
            if(_loc3_)
            {
               addr0037:
               this._dataDirty = true;
               if(_loc3_)
               {
                  invalidateProperties();
               }
            }
            return;
         }
         §§goto(addr0037);
      }
      
      public function updateData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            if(this._data)
            {
               if(!(_loc2_ && _loc1_))
               {
                  (this.stepList.dataProvider as ArrayCollection).refresh();
                  if(_loc1_ || Boolean(this))
                  {
                     addr0061:
                     this._dataDirty = true;
                     if(!_loc2_)
                     {
                        addr006b:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0061);
            }
            addr0070:
            return;
         }
         §§goto(addr006b);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:Boolean = false;
         var _loc2_:ConstructionLayerStepVo = null;
         if(!_loc6_)
         {
            super.commitProperties();
            if(_loc5_ || Boolean(this))
            {
               §§push(Boolean(this._data));
               if(!(_loc6_ && _loc3_))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           §§push(this._dataDirty);
                           if(!_loc6_)
                           {
                              §§push(§§pop());
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§goto(addr0078);
                              }
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00ba);
                  }
                  addr0078:
                  if(§§pop())
                  {
                     if(_loc5_ || _loc3_)
                     {
                        this._dataDirty = false;
                        if(!(_loc6_ && _loc1_))
                        {
                           addr009d:
                           this.stepList.dataProvider = this._data.constructionSteps;
                           if(!(_loc6_ && _loc3_))
                           {
                              addr00ba:
                              _loc1_ = false;
                              addr00b9:
                           }
                        }
                        addr00bb:
                        var _loc3_:int = 0;
                        for each(_loc2_ in this._data.constructionSteps)
                        {
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              if(_loc2_.state != ConstructionLayerStepVo.STATE_RUNNING)
                              {
                                 continue;
                              }
                              if(!_loc6_)
                              {
                                 this.stepStartedHandler(null);
                                 if(!(_loc5_ || Boolean(_loc2_)))
                                 {
                                    break;
                                 }
                              }
                           }
                           _loc1_ = true;
                           break;
                        }
                        if(!_loc6_)
                        {
                           §§push(_loc1_);
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              §§push(!§§pop());
                              if(_loc5_)
                              {
                                 var _temp_12:* = §§pop();
                                 §§push(_temp_12);
                                 if(_temp_12)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§pop();
                                       if(!_loc6_)
                                       {
                                          addr016a:
                                          §§push(this._hasInterval);
                                          if(!(_loc6_ && Boolean(_loc2_)))
                                          {
                                             addr0169:
                                             §§push(§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                addr017c:
                                                clearInterval(this._intervalId);
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   this._hasInterval = false;
                                                   if(!_loc6_)
                                                   {
                                                      addr01a0:
                                                      TweenMax.delayedCall(0.1,this.keepCurrentStepVisible);
                                                      if(!(_loc6_ && Boolean(this)))
                                                      {
                                                         this.setTabData();
                                                         if(_loc5_ || Boolean(_loc2_))
                                                         {
                                                            this.headerLabel.text = this._data.headerLabel;
                                                            if(!_loc6_)
                                                            {
                                                               addr01e2:
                                                               this.flavourLabel.text = this._data.flavourLabel;
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr01f5);
                                                               }
                                                               §§goto(addr0201);
                                                            }
                                                         }
                                                         §§goto(addr022d);
                                                      }
                                                      §§goto(addr01e2);
                                                   }
                                                   §§goto(addr0201);
                                                }
                                                §§goto(addr01a0);
                                             }
                                             §§goto(addr01e2);
                                          }
                                          §§goto(addr01a0);
                                       }
                                       addr01f5:
                                       this.setItemGfx();
                                       if(!_loc6_)
                                       {
                                          addr0201:
                                          this.setItemText();
                                          if(!(_loc6_ && Boolean(this)))
                                          {
                                             this.setButtonLabel();
                                             if(!_loc6_)
                                             {
                                                addr022d:
                                                this.setConstructionSign();
                                                if(_loc5_)
                                                {
                                                   this.scrollShadow.visible = this.scrollShadow.includeInLayout = this._data.constructionSteps.length > 3;
                                                }
                                             }
                                             §§goto(addr0256);
                                          }
                                          §§goto(addr022d);
                                       }
                                       §§goto(addr0256);
                                    }
                                    §§goto(addr0169);
                                 }
                                 §§goto(addr016a);
                              }
                              §§goto(addr0169);
                           }
                           §§goto(addr016a);
                        }
                        §§goto(addr017c);
                     }
                     §§goto(addr009d);
                  }
                  addr0256:
                  return;
               }
               §§goto(addr00ba);
            }
            §§goto(addr00b9);
         }
         §§goto(addr00bb);
      }
      
      private function keepCurrentStepVisible() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:int = 0;
         if(!(_loc2_ && Boolean(this)))
         {
            if(this._data)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0039:
                  _loc1_ = 0;
               }
               do
               {
                  if(_loc1_ >= this._data.constructionSteps.length)
                  {
                     break;
                  }
                  §§push(this._data);
                  if(_loc3_)
                  {
                     §§push(§§pop().constructionSteps[_loc1_].state == ConstructionLayerStepVo.STATE_RUNNING);
                     if(!_loc2_)
                     {
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        if(!_temp_5)
                        {
                           if(_loc3_)
                           {
                              addr0078:
                              §§pop();
                              if(!(_loc3_ || Boolean(this)))
                              {
                                 break;
                              }
                              addr008a:
                              §§push(this._data.constructionSteps[_loc1_].state == ConstructionLayerStepVo.STATE_AVAILABLE);
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              this.stepList.ensureIndexIsVisible(_loc1_);
                              if(_loc2_)
                              {
                              }
                           }
                           break;
                        }
                        continue;
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr008a);
               }
               while(_loc1_++, _loc3_ || Boolean(_loc1_));
               
            }
            return;
         }
         §§goto(addr0039);
      }
      
      private function setConstructionSign() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._data)
            {
               if(_loc3_ || _loc1_)
               {
                  addr0046:
                  if(this.calculateCosts() != 0)
                  {
                     if(!_loc2_)
                     {
                        addr0056:
                        this.constructionGfx.visible = this.constructionGfx.includeInLayout = this._data.billboardObject.billboardObjectVo.isUnderConstruction();
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0056);
            }
            addr0074:
            return;
         }
         §§goto(addr0046);
      }
      
      private function setTabData() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Array = [];
         var _loc2_:TabsVo = new TabsVo();
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_.styleName = "departments";
            if(_loc3_)
            {
               §§push(this._data);
               if(_loc3_ || Boolean(_loc2_))
               {
                  §§push(§§pop());
                  if(!(_loc4_ && Boolean(this)))
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              addr008c:
                              addr0083:
                              §§push(this._data.isUpgrade);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                              }
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    _loc2_.tabLabel = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.title.capital.upgrade");
                                    if(_loc3_)
                                    {
                                    }
                                    addr00d9:
                                    _loc2_.enabled = true;
                                    if(!_loc4_)
                                    {
                                       _loc2_.hasNews = false;
                                       if(_loc3_)
                                       {
                                          _loc1_.push(_loc2_);
                                          if(_loc3_)
                                          {
                                             addr00f8:
                                             this.tabData = new ArrayCollection(_loc1_);
                                          }
                                       }
                                    }
                                 }
                                 return;
                              }
                              _loc2_.tabLabel = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.title.capital.construction");
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§goto(addr00d9);
                              }
                              §§goto(addr00f8);
                           }
                           §§goto(addr00d9);
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0083);
            }
            §§goto(addr00f8);
         }
         §§goto(addr00d9);
      }
      
      private function setItemGfx() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:int = 0;
         if(_loc2_ || Boolean(_loc1_))
         {
            §§push(this._data);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr0039:
                     _loc1_ = this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo.upgradeLevel + 1;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0056:
                        §§push(this.itemGfx);
                        if(_loc2_)
                        {
                           §§pop().dynaLibName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo);
                           if(!_loc3_)
                           {
                              addr0089:
                              addr0085:
                              §§push(this.itemGfx);
                              §§push("FieldItem_");
                              if(_loc2_)
                              {
                                 §§push(§§pop() + this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo.gfxId);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push("_level");
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00e5);
                                    }
                                    §§goto(addr00e4);
                                 }
                                 addr00e5:
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    §§push(§§pop() + _loc1_);
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00e4:
                                       addr00e1:
                                       §§push(§§pop() + "_big");
                                    }
                                 }
                                 §§pop().dynaBmpSourceName = §§pop();
                                 §§goto(addr00e7);
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr00e7);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0056);
               }
               addr00e7:
               return;
            }
            §§goto(addr0039);
         }
         §§goto(addr0085);
      }
      
      private function setItemText() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:int = 0;
         if(!_loc3_)
         {
            §§push(this._data);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this._data);
                     if(_loc2_)
                     {
                        _loc1_ = §§pop().billboardObject.billboardObjectVo.configPlayfieldItemVo.upgradeLevel + 1;
                        addr003e:
                        if(!_loc3_)
                        {
                           this.levelLabel.text = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.levelLabel",[_loc1_]);
                           if(_loc2_)
                           {
                              addr007e:
                              if(!this._data.isUpgrade)
                              {
                                 if(_loc2_)
                                 {
                                    addr008a:
                                    §§push(this.typeLabel);
                                    if(_loc2_)
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.instantLabel.construction"));
                                       if(!_loc3_)
                                       {
                                          §§pop().text = §§pop();
                                          if(_loc3_ && Boolean(this))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr00d4:
                                          §§pop().text = §§pop();
                                       }
                                       §§goto(addr00d6);
                                    }
                                    else
                                    {
                                       addr00c8:
                                       §§push(LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.instantLabel.upgrade"));
                                    }
                                    §§goto(addr00d4);
                                 }
                                 §§goto(addr00d6);
                              }
                              else
                              {
                                 §§push(this.typeLabel);
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00d6);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr00d6);
            }
            §§goto(addr003e);
         }
         addr00d6:
      }
      
      private function calculateCosts() : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConstructionLayerStepVo = null;
         if(_loc6_)
         {
            this._costs = 0;
         }
         var _loc1_:Boolean = false;
         for each(_loc2_ in this._data.constructionSteps)
         {
            if(_loc6_)
            {
               §§push(this);
               §§push(this._costs);
               if(!_loc5_)
               {
                  §§push(§§pop() + _loc2_.instantFinishCost);
               }
               §§pop()._costs = §§pop();
               if(!(_loc6_ || Boolean(this)))
               {
                  continue;
               }
               if(_loc2_.state == ConstructionLayerStepVo.STATE_DONE)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  continue;
               }
            }
            _loc1_ = true;
         }
         if(!(_loc5_ && _loc1_))
         {
            this._costs = Math.floor(this._costs);
            if(_loc6_)
            {
               §§push(this._costs);
               if(!_loc5_)
               {
                  if(§§pop() < 1)
                  {
                     if(!(_loc5_ && Boolean(this)))
                     {
                        if(_loc1_)
                        {
                           if(_loc6_)
                           {
                              addr00ee:
                              this._costs = 1;
                              if(_loc6_ || Boolean(this))
                              {
                              }
                           }
                        }
                        else
                        {
                           this._costs = 0;
                        }
                     }
                  }
                  addr010c:
                  return this._costs;
               }
            }
            §§goto(addr010c);
         }
         §§goto(addr00ee);
      }
      
      private function setButtonLabel() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = NaN;
         if(_loc2_)
         {
            §§push(this._data);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.calculateCosts());
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           _loc1_ = §§pop();
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0064:
                              if(_loc1_ == 0)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr0077:
                                    dispatchEvent(new Event(Event.CLOSE));
                                    if(!_loc3_)
                                    {
                                       return;
                                    }
                                    addr00d5:
                                    §§push(this.instantBuyButton);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(LocaUtils.getThousendSeperatedNumber(_loc1_));
                                       if(_loc2_)
                                       {
                                          §§pop().label = §§pop();
                                          if(_loc2_ || _loc3_)
                                          {
                                             addr0102:
                                             §§push(this.instantBuyButton);
                                             if(!_loc3_)
                                             {
                                                addr010c:
                                                §§pop().priceToConfirm = _loc1_;
                                                addr010b:
                                                if(!_loc3_)
                                                {
                                                   addr0118:
                                                   if(this._data.isUpgrade)
                                                   {
                                                      if(!(_loc3_ && Boolean(_loc1_)))
                                                      {
                                                         addr012c:
                                                         §§push(this.instantBuyButton);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§push(LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.button.tooltip.instantFinishAll.upgrade",[LocaUtils.getThousendSeperatedNumber(_loc1_)]));
                                                            if(!_loc3_)
                                                            {
                                                               addr0163:
                                                               §§pop().toolTip = §§pop();
                                                               if(_loc3_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr0187:
                                                               §§pop().toolTip = §§pop();
                                                            }
                                                            §§goto(addr0189);
                                                         }
                                                         else
                                                         {
                                                            addr0172:
                                                            §§push(LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.button.tooltip.instantFinishAll.construction",[LocaUtils.getThousendSeperatedNumber(_loc1_)]));
                                                         }
                                                         §§goto(addr0187);
                                                      }
                                                      §§goto(addr0189);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.instantBuyButton);
                                                   }
                                                   §§goto(addr0172);
                                                }
                                                §§goto(addr0189);
                                             }
                                             §§goto(addr0172);
                                          }
                                          §§goto(addr0189);
                                       }
                                       §§goto(addr0163);
                                    }
                                    §§goto(addr0172);
                                 }
                                 §§goto(addr012c);
                              }
                              else
                              {
                                 §§push(this.instantBuyButton);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(this._data.rcStock);
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       §§pop().showPlus = §§pop() < _loc1_;
                                       if(!_loc3_)
                                       {
                                          §§goto(addr00d5);
                                       }
                                       §§goto(addr0102);
                                    }
                                    §§goto(addr010c);
                                 }
                              }
                              §§goto(addr010b);
                           }
                           §§goto(addr0189);
                        }
                     }
                     §§goto(addr0064);
                  }
                  §§goto(addr0077);
               }
               addr0189:
               return;
            }
            §§goto(addr0118);
         }
         §§goto(addr012c);
      }
      
      private function instantBuyButton_rollOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = 0;
         if(_loc4_)
         {
            §§push(this._data);
            if(_loc4_ || Boolean(_loc2_))
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     §§push(this._data);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop().isUpgrade);
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(this._data);
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    §§goto(addr0071);
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr01a3);
                        }
                        §§goto(addr010c);
                     }
                     addr0071:
                     §§push(§§pop().billboardObject);
                     if(_loc4_)
                     {
                        §§push(§§pop().billboardObjectVo);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(int(§§pop().configPlayfieldItemVo.upgradeLevel + 1));
                           if(_loc4_)
                           {
                              _loc2_ = §§pop();
                              if(_loc4_ || Boolean(this))
                              {
                                 addr00a9:
                                 §§push(this._data);
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    addr00bb:
                                    §§push(§§pop().isUpgrade);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc5_ && Boolean(param1)))
                                       {
                                          var _temp_8:* = §§pop();
                                          §§push(_temp_8);
                                          if(_temp_8)
                                          {
                                             if(!(_loc5_ && Boolean(_loc2_)))
                                             {
                                                §§pop();
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr010d);
                                                }
                                                §§goto(addr01a3);
                                             }
                                             §§goto(addr010c);
                                          }
                                       }
                                       addr010d:
                                       §§goto(addr00fd);
                                    }
                                    §§goto(addr010c);
                                 }
                                 addr00fd:
                                 §§goto(addr0102);
                              }
                              §§goto(addr01a3);
                           }
                           §§goto(addr012a);
                        }
                        addr0102:
                        §§goto(addr0100);
                     }
                     addr0100:
                     §§push(this._data.billboardObject.billboardObjectVo.isUnderConstruction());
                     if(_loc4_)
                     {
                        addr010c:
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           addr012a:
                           addr011f:
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              §§push(int(§§pop() + 1));
                           }
                           _loc2_ = §§pop();
                           if(_loc4_ || Boolean(param1))
                           {
                              §§goto(addr0139);
                           }
                        }
                        §§goto(addr01a3);
                     }
                     addr0139:
                     §§push(this.itemGfx);
                     §§push("FieldItem_");
                     if(!_loc5_)
                     {
                        §§push(§§pop() + this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo.gfxId);
                        if(_loc4_)
                        {
                           §§push("_level");
                           if(!(_loc5_ && Boolean(_loc2_)))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 §§goto(addr019b);
                              }
                              §§goto(addr0197);
                           }
                           §§goto(addr019a);
                        }
                     }
                     addr019b:
                     §§push(§§pop() + _loc2_);
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        addr0197:
                        addr019a:
                        §§push(§§pop() + "_big");
                     }
                     §§pop().dynaBmpSourceName = §§pop();
                     if(!_loc5_)
                     {
                        addr01a3:
                        this.constructionGfx.visible = this.constructionGfx.includeInLayout = false;
                     }
                     §§goto(addr01b5);
                  }
                  §§goto(addr00a9);
               }
               addr01b5:
               return;
            }
            §§goto(addr00bb);
         }
         §§goto(addr011f);
      }
      
      private function instantBuyButton_rollOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.setItemGfx();
            if(!(_loc3_ && Boolean(this)))
            {
               this.setConstructionSign();
            }
         }
      }
      
      private function instantBuyButton_clickHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.instantBuyButton.enabled = false;
            if(!_loc2_)
            {
               addr0024:
               dispatchEvent(new Event(ConstructionLayerMediator.INSTANT_FINISH_ALL));
            }
            return;
         }
         §§goto(addr0024);
      }
      
      private function stepStartedHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(this._hasInterval)
            {
               if(!(_loc2_ && _loc3_))
               {
                  clearInterval(this._intervalId);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0084);
               }
            }
            addr0064:
            this._intervalId = setInterval(this.updateRunningStep,1000);
            if(_loc3_ || Boolean(this))
            {
               addr0084:
               this._hasInterval = true;
            }
            return;
         }
         §§goto(addr0084);
      }
      
      private function updateRunningStep() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this._costs);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            this.setButtonLabel();
            if(!(_loc2_ && Boolean(this)))
            {
               if(_loc1_ != this._costs)
               {
                  if(_loc3_)
                  {
                     this._toolTipDirty = true;
                     if(_loc3_)
                     {
                        addr006e:
                        if(this._toolTipVisible)
                        {
                           if(!_loc2_)
                           {
                              addr007b:
                              this.toolTipShowHandler(this._toolTipEvent);
                           }
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr006e);
               }
               addr0084:
               return;
            }
            §§goto(addr007b);
         }
         §§goto(addr006e);
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this._hasInterval)
            {
               if(!(_loc3_ && _loc3_))
               {
                  clearInterval(this._intervalId);
               }
            }
         }
      }
      
      protected function toolTipHideHandler(param1:ToolTipEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._toolTipVisible = false;
         }
      }
      
      private function toolTipShowHandler(param1:ToolTipEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = NaN;
         if(_loc4_)
         {
            this._toolTipVisible = true;
            if(!_loc5_)
            {
               this._toolTipEvent = param1;
               if(_loc4_ || Boolean(this))
               {
                  if(this._toolTipDirty)
                  {
                     if(_loc4_)
                     {
                        addr0055:
                        §§push(this.calculateCosts());
                        if(_loc4_)
                        {
                           §§push(§§pop());
                        }
                        _loc2_ = §§pop();
                        if(_loc4_)
                        {
                           param1.toolTip.text = this.instantBuyButton.toolTip = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.button.tooltip.instantFinishStep." + (this._data.isUpgrade ? "upgrade" : "construction"),[_loc2_]);
                           addr0068:
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr0068);
                  }
                  addr00ac:
                  return;
               }
            }
            §§goto(addr0068);
         }
         §§goto(addr0055);
      }
      
      private function _ConstructionLayer_Array1_c() : Array
      {
         return [this._ConstructionLayer_VGroup1_c()];
      }
      
      private function _ConstructionLayer_VGroup1_c() : VGroup
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
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     addr004d:
                     _loc1_.top = -28;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.gap = 0;
                        §§goto(addr005f);
                     }
                  }
                  §§goto(addr0074);
               }
               addr005f:
               if(_loc2_)
               {
                  addr0074:
                  _loc1_.mxmlContent = [this._ConstructionLayer_Group1_c(),this._ConstructionLayer_VGroup2_c(),this._ConstructionLayer_HGroup3_c()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0074);
         }
         §§goto(addr004d);
      }
      
      private function _ConstructionLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.height = 55;
               if(!_loc3_)
               {
                  addr005a:
                  _loc1_.mxmlContent = [this._ConstructionLayer_HGroup1_c(),this._ConstructionLayer_HGroup2_c()];
                  if(_loc2_)
                  {
                     addr0070:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0070);
            }
            addr0088:
            return _loc1_;
         }
         §§goto(addr005a);
      }
      
      private function _ConstructionLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0062:
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._ConstructionLayer_BlueBarComponent1_c()];
                        if(_loc2_ || _loc2_)
                        {
                           addr0098:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr00a4:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr0098);
               }
               addr00a8:
               return _loc1_;
            }
            §§goto(addr0062);
         }
         §§goto(addr0098);
      }
      
      private function _ConstructionLayer_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 80;
            if(_loc3_)
            {
               _loc1_.height = 33;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr004a);
               }
               §§goto(addr0056);
            }
         }
         addr004a:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr0056:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  §§goto(addr003f);
               }
               §§goto(addr0049);
            }
         }
         addr003f:
         _loc1_.horizontalAlign = "center";
         if(_loc2_)
         {
            addr0049:
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._ConstructionLayer_BriskImageDynaLib1_c(),this._ConstructionLayer_Group2_c()];
               if(_loc2_)
               {
                  §§goto(addr007c);
               }
               §§goto(addr0088);
            }
         }
         addr007c:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr0088:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_upgrade";
               if(!_loc2_)
               {
                  addr0040:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      private function _ConstructionLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.height = 18;
            if(_loc2_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._ConstructionLayer_LocaLabel1_i()];
               if(_loc2_)
               {
                  addr0064:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0064);
      }
      
      private function _ConstructionLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc2_)
            {
               _loc1_.maxWidth = 500;
               if(_loc3_)
               {
                  _loc1_.styleName = "sixteenWhiteCenter";
                  if(_loc3_)
                  {
                     addr0042:
                     _loc1_.top = 4;
                     if(!_loc2_)
                     {
                        addr0057:
                        _loc1_.id = "headerLabel";
                        if(_loc3_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr008c:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr0095);
                                 }
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr008c);
                     }
                  }
                  addr0095:
                  this.headerLabel = _loc1_;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00a7:
                     BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
                  }
                  return _loc1_;
               }
               §§goto(addr0042);
            }
            §§goto(addr0057);
         }
         §§goto(addr0042);
      }
      
      private function _ConstructionLayer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 40;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0059:
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._ConstructionLayer_LocaLabel2_i()];
                        §§goto(addr006c);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr008f);
               }
               addr006c:
               if(_loc2_ || Boolean(this))
               {
                  addr008f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr00a3:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00a7);
            }
            §§goto(addr0059);
         }
         addr00a7:
         return _loc1_;
      }
      
      private function _ConstructionLayer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.maxDisplayedLines = 2;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.maxWidth = 500;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.styleName = "flavorText";
                  if(_loc3_)
                  {
                     addr0067:
                     _loc1_.id = "flavourLabel";
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr007a);
                     }
                     §§goto(addr00ad);
                  }
               }
               addr007a:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr00a3);
                     }
                     §§goto(addr00ad);
                  }
               }
               addr00a3:
               this.flavourLabel = _loc1_;
               if(_loc3_)
               {
                  addr00ad:
                  BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
               }
               return _loc1_;
            }
            §§goto(addr0067);
         }
         §§goto(addr00ad);
      }
      
      private function _ConstructionLayer_HGroup3_c() : HGroup
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
               _loc1_.height = 280;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0056:
                  _loc1_.mxmlContent = [this._ConstructionLayer_Group3_c(),this._ConstructionLayer_Group6_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0078:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0078);
         }
         §§goto(addr0056);
      }
      
      private function _ConstructionLayer_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 190;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._ConstructionLayer_Group4_c(),this._ConstructionLayer_Group5_c(),this._ConstructionLayer_BriskMCDynaLib2_c()];
                  if(_loc2_ || Boolean(this))
                  {
                     addr0081:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr008d:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr008d);
               }
               addr0091:
               return _loc1_;
            }
            §§goto(addr008d);
         }
         §§goto(addr0081);
      }
      
      private function _ConstructionLayer_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.bottom = 0;
            if(_loc2_)
            {
               §§goto(addr004b);
            }
            §§goto(addr0075);
         }
         addr004b:
         _loc1_.mxmlContent = [this._ConstructionLayer_BriskMCDynaLib1_c(),this._ConstructionLayer_VGroup3_c()];
         if(_loc2_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0075:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaMCSourceName = "postit_bg";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.width = 193;
                  if(_loc3_ || _loc3_)
                  {
                     addr007b:
                     _loc1_.height = 95;
                     if(_loc3_)
                     {
                        addr0085:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0091:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr007b);
            }
            addr0095:
            return _loc1_;
         }
         §§goto(addr0085);
      }
      
      private function _ConstructionLayer_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.height = 70;
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.verticalAlign = "bottom";
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr006b);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr00bf);
               }
               addr006b:
               _loc1_.bottom = 15;
               if(!(_loc3_ && _loc2_))
               {
                  addr007e:
                  _loc1_.gap = 2;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.mxmlContent = [this._ConstructionLayer_LocaLabel3_i(),this._ConstructionLayer_LocaLabel4_i(),this._ConstructionLayer_MultistateButton1_i()];
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr00bf:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr00cb:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00cf);
                     }
                  }
                  §§goto(addr00cb);
               }
               addr00cf:
               return _loc1_;
            }
         }
         §§goto(addr007e);
      }
      
      private function _ConstructionLayer_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc2_)
            {
               addr0029:
               _loc1_.styleName = "elevenDarkCenter";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.maxWidth = 170;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.id = "typeLabel";
                     if(!(_loc3_ && _loc2_))
                     {
                        addr006e:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr008e);
                           }
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr006e);
            }
            addr008e:
            _loc1_.document = this;
            if(_loc2_)
            {
               addr0097:
               this.typeLabel = _loc1_;
               if(_loc2_ || _loc2_)
               {
                  addr00a9:
                  BindingManager.executeBindings(this,"typeLabel",this.typeLabel);
               }
            }
            return _loc1_;
         }
         §§goto(addr0029);
      }
      
      private function _ConstructionLayer_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc2_)
            {
               _loc1_.styleName = "thirteenBlueCenter";
               if(!_loc3_)
               {
                  §§goto(addr0034);
               }
               §§goto(addr0055);
            }
            addr0034:
            _loc1_.maxWidth = 170;
            if(!(_loc3_ && _loc2_))
            {
               addr0055:
               _loc1_.id = "levelLabel";
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           §§goto(addr0087);
                        }
                        §§goto(addr0099);
                     }
                  }
                  addr0087:
                  this.levelLabel = _loc1_;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0099:
                     BindingManager.executeBindings(this,"levelLabel",this.levelLabel);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr0099);
            }
            addr00a6:
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _ConstructionLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.width = 160;
            if(_loc3_ || _loc2_)
            {
               _loc1_.imageNameLeft = "dd_button_icon";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.libNameLeft = "gui_resources_icons";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.useConfirmation = true;
                     if(!_loc2_)
                     {
                        _loc1_.addEventListener("rollOver",this.__instantBuyButton_rollOver);
                        if(_loc3_)
                        {
                           addr0084:
                           _loc1_.addEventListener("rollOut",this.__instantBuyButton_rollOut);
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.addEventListener("click",this.__instantBuyButton_click);
                              if(_loc3_)
                              {
                                 addr00ae:
                                 _loc1_.id = "instantBuyButton";
                                 if(_loc3_)
                                 {
                                    §§goto(addr00b9);
                                 }
                                 §§goto(addr00d1);
                              }
                              §§goto(addr00ec);
                           }
                           §§goto(addr00ae);
                        }
                        addr00b9:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr00d1:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr00da);
                              }
                           }
                           §§goto(addr00ec);
                        }
                        §§goto(addr00da);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr00da);
               }
               §§goto(addr00b9);
            }
            addr00da:
            this.instantBuyButton = _loc1_;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr00ec:
               BindingManager.executeBindings(this,"instantBuyButton",this.instantBuyButton);
            }
            return _loc1_;
         }
         §§goto(addr0084);
      }
      
      public function __instantBuyButton_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.instantBuyButton_rollOverHandler(param1);
         }
      }
      
      public function __instantBuyButton_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.instantBuyButton_rollOutHandler(param1);
         }
      }
      
      public function __instantBuyButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.instantBuyButton_clickHandler(param1);
         }
      }
      
      private function _ConstructionLayer_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._ConstructionLayer_BriskImageDynaLib2_c(),this._ConstructionLayer_HGroup4_c(),this._ConstructionLayer_HGroup5_c()];
            if(_loc3_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0073:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0073);
      }
      
      private function _ConstructionLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || _loc2_)
            {
               addr003c:
               _loc1_.dynaBmpSourceName = "architect_blueprint_big";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0053:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0053);
         }
         §§goto(addr003c);
      }
      
      private function _ConstructionLayer_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     addr0054:
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ConstructionLayer_BriskImageDynaLib3_i()];
                        addr005f:
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0085:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0099:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr0099);
                     }
                  }
                  addr009d:
                  return _loc1_;
               }
               §§goto(addr005f);
            }
            §§goto(addr0054);
         }
         §§goto(addr0085);
      }
      
      private function _ConstructionLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.id = "itemGfx";
            if(_loc2_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr0060);
                     }
                     §§goto(addr006a);
                  }
               }
               addr0060:
               this.itemGfx = _loc1_;
               if(!_loc3_)
               {
                  addr006a:
                  BindingManager.executeBindings(this,"itemGfx",this.itemGfx);
               }
               §§goto(addr0077);
            }
            addr0077:
            return _loc1_;
         }
         §§goto(addr0060);
      }
      
      private function _ConstructionLayer_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     addr0061:
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_)
                     {
                        addr006c:
                        _loc1_.mxmlContent = [this._ConstructionLayer_BriskImageDynaLib4_i()];
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0088:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr008c);
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr006c);
               }
               addr008c:
               return _loc1_;
            }
            §§goto(addr0061);
         }
         §§goto(addr006c);
      }
      
      private function _ConstructionLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "construction_sign";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.id = "constructionGfx";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0082:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0093:
                              this.constructionGfx = _loc1_;
                              if(_loc3_)
                              {
                                 addr009d:
                                 BindingManager.executeBindings(this,"constructionGfx",this.constructionGfx);
                              }
                           }
                           §§goto(addr00aa);
                        }
                     }
                  }
                  §§goto(addr0093);
               }
               addr00aa:
               return _loc1_;
            }
            §§goto(addr0082);
         }
         §§goto(addr009d);
      }
      
      private function _ConstructionLayer_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.top = -5;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  addr0046:
                  if(!_loc2_)
                  {
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0071);
                     }
                     §§goto(addr007d);
                  }
                  addr0071:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr007d:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr007d);
            }
            addr0081:
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _ConstructionLayer_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.width = 542;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.height = 271;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ConstructionLayer_DebossedBackgroundComponent1_c(),this._ConstructionLayer_List1_i(),this._ConstructionLayer_BriskImageDynaLib5_i()];
                  if(!_loc3_)
                  {
                     addr0078:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0078);
            }
         }
         addr0090:
         return _loc1_;
      }
      
      private function _ConstructionLayer_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  addr0047:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0057);
            }
            §§goto(addr0047);
         }
         addr0057:
         return _loc1_;
      }
      
      private function _ConstructionLayer_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_)
         {
            _loc1_.itemRenderer = this._ConstructionLayer_ClassFactory1_c();
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.useVirtualLayout = false;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.top = 2;
                        addr0063:
                        if(!_loc3_)
                        {
                           _loc1_.bottom = 2;
                           if(_loc2_)
                           {
                              §§goto(addr0084);
                           }
                           §§goto(addr00b8);
                        }
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr00b8);
               }
               addr0084:
               _loc1_.right = 4;
               if(_loc2_)
               {
                  _loc1_.setStyle("skinClass",VerticalScrollbarList);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00a5:
                     _loc1_.id = "stepList";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr00b8:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr00db:
                                 this.stepList = _loc1_;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00ed:
                                    BindingManager.executeBindings(this,"stepList",this.stepList);
                                 }
                              }
                              §§goto(addr00fa);
                           }
                        }
                        §§goto(addr00db);
                     }
                     §§goto(addr00fa);
                  }
                  §§goto(addr00ed);
               }
               addr00fa:
               return _loc1_;
            }
            §§goto(addr00ed);
         }
         §§goto(addr0063);
      }
      
      private function _ConstructionLayer_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_)
         {
            _loc1_.generator = ConstructionStepItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ConstructionLayer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "shadow_bottom";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.bottom = 3;
                     if(!_loc2_)
                     {
                        addr0062:
                        _loc1_.left = 2;
                        if(!_loc2_)
                        {
                           addr006c:
                           _loc1_.right = 2;
                           if(_loc3_)
                           {
                              _loc1_.id = "scrollShadow";
                              if(_loc3_)
                              {
                                 addr0081:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00a1:
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          addr00aa:
                                          this.scrollShadow = _loc1_;
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr00bc:
                                             BindingManager.executeBindings(this,"scrollShadow",this.scrollShadow);
                                          }
                                          §§goto(addr00c9);
                                       }
                                       §§goto(addr00bc);
                                    }
                                    addr00c9:
                                    return _loc1_;
                                 }
                                 §§goto(addr00aa);
                              }
                              §§goto(addr00bc);
                           }
                        }
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr006c);
            }
            §§goto(addr0062);
         }
         §§goto(addr00aa);
      }
      
      public function ___ConstructionLayer_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      public function ___ConstructionLayer_PaperPopupWindow1_removedFromStage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.removedFromStageHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get constructionGfx() : BriskImageDynaLib
      {
         return this._2120349464constructionGfx;
      }
      
      public function set constructionGfx(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2120349464constructionGfx;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._2120349464constructionGfx = param1;
                  addr0041:
                  if(_loc4_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006d);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"constructionGfx",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._949820541flavourLabel;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._949820541flavourLabel = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerLabel() : LocaLabel
      {
         return this._1166031975headerLabel;
      }
      
      public function set headerLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1166031975headerLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1166031975headerLabel = param1;
                  if(!_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0064);
               }
            }
            addr0073:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get instantBuyButton() : MultistateButton
      {
         return this._1822366839instantBuyButton;
      }
      
      public function set instantBuyButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1822366839instantBuyButton;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1822366839instantBuyButton = param1;
                  addr0045:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"instantBuyButton",_loc2_,param1));
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
         §§goto(addr0045);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemGfx() : BriskImageDynaLib
      {
         return this._2116181862itemGfx;
      }
      
      public function set itemGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2116181862itemGfx;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2116181862itemGfx = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0064);
               }
            }
            addr0073:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelLabel() : LocaLabel
      {
         return this._188974544levelLabel;
      }
      
      public function set levelLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._188974544levelLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._188974544levelLabel = param1;
                  if(_loc3_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr004d);
            }
         }
         addr0073:
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollShadow() : BriskImageDynaLib
      {
         return this._750240179scrollShadow;
      }
      
      public function set scrollShadow(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._750240179scrollShadow;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._750240179scrollShadow = param1;
                  if(_loc3_)
                  {
                     addr0042:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollShadow",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0042);
            }
            addr0061:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get stepList() : List
      {
         return this._1428284810stepList;
      }
      
      public function set stepList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1428284810stepList;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1428284810stepList = param1;
                  addr0037:
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLabel() : LocaLabel
      {
         return this._501248986typeLabel;
      }
      
      public function set typeLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._501248986typeLabel;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._501248986typeLabel = param1;
                  addr0041:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr0041);
      }
   }
}

