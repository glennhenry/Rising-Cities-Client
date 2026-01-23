package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
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
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.SecurityStatusComponentVo;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins.SecurityStatusCheckSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.List;
   
   public class SecurityStatusComponent extends Group
   {
      
      private var _807992318securityList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean;
      
      private var _data:Vector.<SecurityStatusComponentVo>;
      
      public function SecurityStatusComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addr0027:
               mx_internal::_document = this;
               if(_loc1_ || Boolean(this))
               {
                  this.mxmlContent = [this._SecurityStatusComponent_List1_i()];
               }
            }
            return;
         }
         §§goto(addr0027);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               §§goto(addr0032);
            }
            §§goto(addr0047);
         }
         addr0032:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc3_ && _loc2_))
            {
               addr0047:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
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
      
      public function set data(param1:Vector.<SecurityStatusComponentVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc2_)
               {
                  this._data = param1;
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     addr0061:
                     this._isDirty = true;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0074:
                        invalidateProperties();
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr0074);
            }
            addr0079:
            return;
         }
         §§goto(addr0061);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:ArrayCollection = null;
         var _loc2_:SecurityStatusComponentVo = null;
         if(!_loc6_)
         {
            super.commitProperties();
            if(_loc5_ || Boolean(_loc2_))
            {
               §§push(Boolean(this._data));
               if(!(_loc6_ && Boolean(this)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc6_ && Boolean(_loc2_)))
                     {
                        addr005d:
                        §§pop();
                        if(!_loc6_)
                        {
                           §§goto(addr0078);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr0077);
                  }
                  addr0078:
                  §§goto(addr0064);
               }
               §§goto(addr005d);
            }
            addr0064:
            §§push(this._isDirty);
            if(!(_loc6_ && Boolean(this)))
            {
               addr0077:
               §§push(§§pop());
            }
            if(§§pop())
            {
               addr007c:
               _loc1_ = new ArrayCollection();
               if(!_loc6_)
               {
                  if(this._data.length > 1)
                  {
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        this._data[this._data.length - 1].lastInList = true;
                        if(_loc5_ || Boolean(_loc2_))
                        {
                        }
                     }
                  }
                  else
                  {
                     this._data[0].lastInList = true;
                  }
               }
               for each(_loc2_ in this._data)
               {
                  if(_loc5_ || Boolean(_loc1_))
                  {
                     _loc1_.addItem(_loc2_);
                  }
               }
               if(!(_loc6_ && Boolean(_loc1_)))
               {
                  this.securityList.dataProvider = _loc1_;
               }
            }
            return;
         }
         §§goto(addr007c);
      }
      
      private function _SecurityStatusComponent_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.itemRenderer = this._SecurityStatusComponent_ClassFactory1_c();
                  if(!_loc3_)
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr00a7);
               }
               addr0066:
               _loc1_.setStyle("skinClass",SecurityStatusCheckSkin);
               if(_loc2_)
               {
                  addr0075:
                  _loc1_.id = "securityList";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr00a7:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr00b0:
                              this.securityList = _loc1_;
                              if(!_loc3_)
                              {
                                 addr00ba:
                                 BindingManager.executeBindings(this,"securityList",this.securityList);
                              }
                           }
                           §§goto(addr00c7);
                        }
                        §§goto(addr00ba);
                     }
                  }
                  §§goto(addr00b0);
               }
               addr00c7:
               return _loc1_;
            }
            §§goto(addr0075);
         }
         §§goto(addr00ba);
      }
      
      private function _SecurityStatusComponent_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc3_)
         {
            _loc1_.generator = SecurityStatusCheckItemRenderer;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get securityList() : List
      {
         return this._807992318securityList;
      }
      
      public function set securityList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._807992318securityList;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._807992318securityList = param1;
                  addr0046:
                  if(!_loc4_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr005c);
            }
            addr0082:
            return;
         }
         §§goto(addr0046);
      }
   }
}

