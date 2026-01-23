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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolOptionVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.miniLayer.components.PatrolOptionsItemRenderer;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.PatrolOptionsSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class PatrolMiniLayer extends MiniLayerWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || PatrolMiniLayer)
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
      
      private var _800887486flavourText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _1184756046patrolOptions:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:Vector.<PatrolOptionVo>;
      
      private var _isDirty:Boolean;
      
      public function PatrolMiniLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc1_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc2_))
               {
                  addr0051:
                  this.width = 540;
                  if(_loc1_ || Boolean(this))
                  {
                     §§goto(addr006e);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr006e);
            }
            §§goto(addr0051);
         }
         addr006e:
         this.height = 313;
         if(!_loc2_)
         {
            this.showAttentionSign = false;
            if(!(_loc2_ && _loc1_))
            {
               addr008b:
               this.mxmlContentFactory = new DeferredInstanceFromFunction(this._PatrolMiniLayer_Array1_c);
            }
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
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0035);
            }
            §§goto(addr004b);
         }
         addr0035:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_ || Boolean(this))
            {
               addr004b:
               return;
            }
         }
         else
         {
            this.__moduleFactoryInitialized = true;
         }
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
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:* = null;
         var _loc2_:ArrayCollection = null;
         var _loc3_:PatrolOptionVo = null;
         if(_loc6_)
         {
            super.commitProperties();
            if(_loc6_ || Boolean(this))
            {
               §§push(Boolean(this._data));
               if(!_loc7_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!(_loc7_ && Boolean(this)))
                     {
                        §§pop();
                        if(_loc6_)
                        {
                           §§goto(addr006c);
                        }
                        §§goto(addr013a);
                     }
                  }
                  addr006c:
                  §§goto(addr0061);
               }
               §§goto(addr006b);
            }
            §§goto(addr00b8);
         }
         addr0061:
         §§push(this._isDirty);
         if(!_loc7_)
         {
            addr006b:
            §§push(§§pop());
         }
         if(§§pop())
         {
            if(!(_loc7_ && Boolean(this)))
            {
               this._isDirty = false;
               if(_loc6_)
               {
                  title = ResourceManager.getInstance().getString(String("rcl.miniLayer.streetPatrol"),String("rcl.miniLayer.streetPatrol.name.capital"));
                  if(!(_loc7_ && Boolean(this)))
                  {
                     addr00b8:
                     §§push(ResourceManager.getInstance().getString(String("rcl.miniLayer.streetPatrol"),String("rcl.miniLayer.streetPatrol.flavour")));
                     if(!(_loc7_ && Boolean(_loc1_)))
                     {
                        §§push(§§pop());
                     }
                     _loc1_ = §§pop();
                     if(_loc6_)
                     {
                        addr00f7:
                        this.flavourText.text = StringUtil.substitute(_loc1_,this._data[0].runtimeHours);
                        if(_loc6_ || Boolean(_loc1_))
                        {
                           §§goto(addr0120);
                        }
                        §§goto(addr013a);
                     }
                     §§goto(addr0120);
                  }
                  §§goto(addr00f7);
               }
               §§goto(addr0147);
            }
            addr0120:
            if(this._data.length > 0)
            {
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  addr013a:
                  this._data.sort(this.sortByRate);
               }
               addr0147:
               _loc2_ = new ArrayCollection();
               for each(_loc3_ in this._data)
               {
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     _loc2_.addItem(_loc3_);
                  }
               }
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  this.patrolOptions.dataProvider = _loc2_;
               }
            }
            §§goto(addr01a9);
         }
         addr01a9:
      }
      
      private function sortByRate(param1:PatrolOptionVo, param2:PatrolOptionVo) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(param1.rate);
            if(_loc4_)
            {
               §§push(param2.rate);
               if(_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc4_ || Boolean(this))
                     {
                        §§push(-1);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr008c:
                        §§push(0);
                     }
                     §§goto(addr008e);
                  }
                  else
                  {
                     addr0072:
                     addr006e:
                     addr006a:
                     if(param1.rate < param2.rate)
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§push(1);
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§goto(addr008c);
                        }
                        addr008e:
                        return §§pop();
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0072);
            }
            §§goto(addr006e);
         }
         §§goto(addr006a);
      }
      
      public function set data(param1:Vector.<PatrolOptionVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc3_ && _loc2_))
               {
                  this._data = param1;
                  if(_loc2_ || _loc2_)
                  {
                     addr0069:
                     this._isDirty = true;
                     if(_loc2_)
                     {
                        addr0073:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0073);
            }
            addr0078:
            return;
         }
         §§goto(addr0069);
      }
      
      private function _PatrolMiniLayer_Array1_c() : Array
      {
         return [this._PatrolMiniLayer_VGroup1_i()];
      }
      
      private function _PatrolMiniLayer_VGroup1_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_)
                     {
                        _loc1_.paddingTop = -20;
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.gap = -5;
                           if(!_loc2_)
                           {
                              addr007b:
                              _loc1_.mxmlContent = [this._PatrolMiniLayer_HGroup1_c(),this._PatrolMiniLayer_List1_i()];
                              if(!_loc2_)
                              {
                                 _loc1_.id = "mainGroup";
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00a4:
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          addr00c3:
                                          _loc1_.document = this;
                                          if(!_loc2_)
                                          {
                                             addr00cc:
                                             this.mainGroup = _loc1_;
                                             if(!_loc2_)
                                             {
                                                addr00d6:
                                                BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                                             }
                                             §§goto(addr00e3);
                                          }
                                          §§goto(addr00d6);
                                       }
                                       §§goto(addr00e3);
                                    }
                                    §§goto(addr00cc);
                                 }
                                 §§goto(addr00e3);
                              }
                              §§goto(addr00cc);
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr00a4);
                  }
                  addr00e3:
                  return _loc1_;
               }
               §§goto(addr00a4);
            }
            §§goto(addr007b);
         }
         §§goto(addr00d6);
      }
      
      private function _PatrolMiniLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 90;
            if(_loc2_)
            {
               addr0032:
               _loc1_.height = 50;
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0050);
               }
               §§goto(addr0063);
            }
            addr0050:
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || _loc3_)
            {
               addr0063:
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._PatrolMiniLayer_LocaLabel1_i()];
                  if(!_loc3_)
                  {
                     addr0092:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr0092);
            }
            addr00aa:
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _PatrolMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 80;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(!_loc2_)
               {
                  addr0051:
                  _loc1_.maxDisplayedLines = 3;
                  if(_loc3_)
                  {
                     _loc1_.id = "flavourText";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr008e);
                           }
                        }
                        §§goto(addr009f);
                     }
                     addr008e:
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr009f:
                        this.flavourText = _loc1_;
                        if(!_loc2_)
                        {
                           addr00a9:
                           BindingManager.executeBindings(this,"flavourText",this.flavourText);
                        }
                     }
                     §§goto(addr00b6);
                  }
               }
               addr00b6:
               return _loc1_;
            }
            §§goto(addr00a9);
         }
         §§goto(addr0051);
      }
      
      private function _PatrolMiniLayer_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_)
         {
            _loc1_.itemRenderer = this._PatrolMiniLayer_ClassFactory1_c();
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0035:
               _loc1_.setStyle("skinClass",PatrolOptionsSkin);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "patrolOptions";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr008a);
                        }
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr009b);
            }
            addr008a:
            _loc1_.document = this;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr009b:
               this.patrolOptions = _loc1_;
               if(_loc3_)
               {
                  addr00a5:
                  BindingManager.executeBindings(this,"patrolOptions",this.patrolOptions);
               }
            }
            return _loc1_;
         }
         §§goto(addr0035);
      }
      
      private function _PatrolMiniLayer_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = PatrolOptionsItemRenderer;
         }
         return _loc1_;
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
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._800887486flavourText = param1;
                  addr0040:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._273241018mainGroup = param1;
                  addr0041:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get patrolOptions() : List
      {
         return this._1184756046patrolOptions;
      }
      
      public function set patrolOptions(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1184756046patrolOptions;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1184756046patrolOptions = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"patrolOptions",_loc2_,param1));
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
         §§goto(addr005f);
      }
   }
}

