package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import com.greensock.TweenMax;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.GlowFilter;
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
   import mx.controls.ToolTip;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentThresholdBarVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class SecurityBarPartComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _756762963bubbleGroup:Group;
      
      private var _74026253maskGroup:Group;
      
      private var _169633629maskPreviewGroup:Group;
      
      private var _1318318899staticBG:HGroup;
      
      private var _146540369staticBarMask:HGroup;
      
      private var _1276435141staticPreviewBarMask:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataIsDirty:Boolean = false;
      
      private var _progressIsDirty:Boolean = false;
      
      private var _data:DepartmentThresholdBarVo;
      
      private var _currentThreshold:int;
      
      private var _bubbleTip:ToolTip;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SecurityBarPartComponent()
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
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr0041:
                     §§pop().§§slot[5] = null;
                     if(_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc3_ || _loc2_)
                                 {
                                    super();
                                    if(_loc3_ || _loc1_)
                                    {
                                       addr0091:
                                       mx_internal::_document = this;
                                       if(!_loc4_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§pop().§§slot[1] = this._SecurityBarPartComponent_bindingsSetup();
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                addr00cc:
                                                §§push(§§newactivation());
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc3_)
                                                      {
                                                         addr00ee:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     addr011c:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_departmentBook_ui_components_SecurityBarPartComponentWatcherSetupUtil");
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0163:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return SecurityBarPartComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr01ae:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr01d4:
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          this.percentHeight = 100;
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr01f0:
                                                                                             this.mxmlContent = [this._SecurityBarPartComponent_HGroup1_i(),this._SecurityBarPartComponent_HGroup2_i(),this._SecurityBarPartComponent_Group2_i(),this._SecurityBarPartComponent_HGroup4_i(),this._SecurityBarPartComponent_Group3_i(),this._SecurityBarPartComponent_Group4_i()];
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr021f:
                                                                                                this.addEventListener("creationComplete",this.___SecurityBarPartComponent_Group1_creationComplete);
                                                                                                if(!(_loc4_ && Boolean(this)))
                                                                                                {
                                                                                                   addr023b:
                                                                                                   i = 0;
                                                                                                   addr0239:
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
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            Binding(bindings[i]).execute();
                                                                                                            if(!(_loc3_ || _loc3_))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc3_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  var _temp_19:* = §§pop();
                                                                                                                  §§pop().§§slot[4] = _temp_19;
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      break loop0;
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                                addr029f:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0239);
                                                                                       }
                                                                                       §§goto(addr01f0);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr021f);
                                                                           }
                                                                           §§goto(addr029f);
                                                                        }
                                                                        §§goto(addr023b);
                                                                     }
                                                                     §§goto(addr0163);
                                                                  }
                                                                  §§goto(addr023b);
                                                               }
                                                               §§goto(addr01d4);
                                                            }
                                                            §§goto(addr0163);
                                                         }
                                                         §§goto(addr021f);
                                                      }
                                                      §§goto(addr023b);
                                                   }
                                                   §§goto(addr021f);
                                                }
                                                §§goto(addr023b);
                                             }
                                             §§goto(addr01ae);
                                          }
                                          §§goto(addr00ee);
                                       }
                                    }
                                    §§goto(addr029f);
                                 }
                                 §§goto(addr0091);
                              }
                              §§goto(addr00cc);
                           }
                        }
                        §§goto(addr029f);
                     }
                     §§goto(addr0239);
                  }
                  §§goto(addr00ee);
               }
               §§goto(addr021f);
            }
            §§goto(addr0041);
         }
         §§goto(addr011c);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || SecurityBarPartComponent)
         {
            SecurityBarPartComponent._watcherSetupUtil = param1;
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
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0040);
                  }
               }
               else
               {
                  addr0046:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr0046);
         }
         addr0040:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:DepartmentThresholdBarVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_)
               {
                  this._data = param1;
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     addr0058:
                     this._dataIsDirty = true;
                     if(_loc3_ || _loc2_)
                     {
                        invalidateProperties();
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0058);
            }
            else
            {
               this.updatePercent(param1.percent);
            }
         }
         addr0082:
      }
      
      public function updatePercent(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data.percent))
            {
               if(_loc2_ || _loc3_)
               {
                  this._data.currentValue = param1;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0067:
                     this._progressIsDirty = true;
                     if(_loc2_ || _loc3_)
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0067);
            }
            addr007e:
            return;
         }
         §§goto(addr0067);
      }
      
      public function get currentThreshold() : int
      {
         return this._currentThreshold;
      }
      
      private function handleCreationComplete(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.maskGroup.mask = this.staticBarMask;
            if(!_loc3_)
            {
               addr0040:
               this.maskPreviewGroup.mask = this.staticPreviewBarMask;
               if(_loc2_)
               {
                  invalidateProperties();
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc3_:BriskImageDynaLib = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         if(!_loc10_)
         {
            super.commitProperties();
         }
         var _loc2_:* = false;
         if(!(_loc10_ && Boolean(_loc3_)))
         {
            if(this.staticBG.width == 0)
            {
               if(_loc11_)
               {
                  return;
               }
               addr0164:
               §§push(this._data.showPreview);
            }
            else
            {
               §§push(this._progressIsDirty);
               if(!(_loc10_ && _loc2_))
               {
                  §§push(§§pop());
                  if(_loc11_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(!_temp_4)
                     {
                        if(!_loc10_)
                        {
                           §§pop();
                           if(!_loc10_)
                           {
                              §§push(this._dataIsDirty);
                              if(!_loc10_)
                              {
                                 addr0093:
                                 §§push(§§pop());
                                 if(_loc11_)
                                 {
                                    addr009a:
                                    if(§§pop())
                                    {
                                       if(_loc11_ || _loc2_)
                                       {
                                          this._progressIsDirty = false;
                                          if(_loc11_)
                                          {
                                             addr00b7:
                                             §§push(Math.floor(this.staticPreviewBarMask.width * -1));
                                             if(_loc11_ || _loc2_)
                                             {
                                                _loc4_ = §§pop();
                                                if(_loc11_ || Boolean(this))
                                                {
                                                   addr00e5:
                                                   §§push(Math.floor(4 + this.staticBarMask.width * -1 * (1 - Math.min(Number(this._data.percent),1))));
                                                   if(_loc11_)
                                                   {
                                                      addr0116:
                                                      _loc5_ = §§pop();
                                                      if(!(_loc10_ && Boolean(this)))
                                                      {
                                                         TweenMax.fromTo(this.maskGroup,0.8,{"left":_loc4_},{"left":_loc5_});
                                                         if(_loc11_)
                                                         {
                                                            addr0146:
                                                            this.maskGroup.visible = this._data.percent > 0;
                                                            if(_loc11_ || _loc2_)
                                                            {
                                                               §§goto(addr0164);
                                                            }
                                                            addr01e7:
                                                            for each(_loc3_ in this.bubbleGroup)
                                                            {
                                                               if(!(_loc10_ && Boolean(_loc3_)))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc11_ || Boolean(_loc3_))
                                                                  {
                                                                     addr0220:
                                                                     _loc1_ = Number(_loc3_.id);
                                                                     if(!_loc10_)
                                                                     {
                                                                        _loc2_ = this._data.currentValue >= _loc1_;
                                                                        if(_loc11_)
                                                                        {
                                                                           addr0240:
                                                                           §§push(_loc3_);
                                                                           if(_loc11_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr024c:
                                                                                 §§push("bubble_checked");
                                                                                 if(_loc10_ && Boolean(this))
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push("bubble_unchecked");
                                                                              }
                                                                              §§pop().dynaBmpSourceName = §§pop();
                                                                              if(_loc10_ && Boolean(_loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr0283:
                                                                              §§push(_loc3_);
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr028f:
                                                                                    §§push(this._data);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(§§pop().reachedBubbleTooltip);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr02c3:
                                                                                          §§push(§§pop());
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr02c2:
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                          §§pop().toolTip = §§pop();
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr02c2);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr02b1:
                                                                                       §§push(§§pop().openBubbleTooltip);
                                                                                       if(!(_loc10_ && Boolean(this)))
                                                                                       {
                                                                                          §§goto(addr02c2);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr02c3);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this._data);
                                                                                 }
                                                                                 §§goto(addr02b1);
                                                                              }
                                                                              §§goto(addr028f);
                                                                           }
                                                                           §§goto(addr024c);
                                                                        }
                                                                     }
                                                                     §§goto(addr0283);
                                                                  }
                                                                  §§goto(addr0240);
                                                               }
                                                               §§goto(addr0220);
                                                            }
                                                            if(_loc11_ || Boolean(_loc1_))
                                                            {
                                                               addr02de:
                                                               §§push(this._dataIsDirty);
                                                               if(!(_loc10_ && Boolean(this)))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc10_ && Boolean(_loc1_)))
                                                                     {
                                                                        this._dataIsDirty = false;
                                                                        if(!_loc10_)
                                                                        {
                                                                           this.bubbleGroup.removeAllElements();
                                                                           if(_loc11_ || Boolean(_loc3_))
                                                                           {
                                                                              addr0323:
                                                                              §§push(this._data);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(§§pop().showBubbles);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc11_ || Boolean(_loc3_))
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                loop1:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   loop2:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= this._data.thresholds.length)
                                                                                                      {
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      §§push(this._data);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(int(§§pop().thresholds[_loc7_].threshold));
                                                                                                            if(_loc10_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc1_ = §§pop();
                                                                                                               if(!(_loc10_ && _loc2_))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this._data);
                                                                                                                     addr0394:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().currentValue >= _loc1_);
                                                                                                                        addr0399:
                                                                                                                        do
                                                                                                                        {
                                                                                                                           _loc2_ = §§pop();
                                                                                                                        }
                                                                                                                        while(_loc11_ || _loc2_);
                                                                                                                        
                                                                                                                        break loop1;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr0390:
                                                                                                               }
                                                                                                               addr03a8:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc3_ = new BriskImageDynaLib();
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     _loc3_.id = _loc1_.toString();
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        _loc3_.dynaLibName = "gui_popups_emergencyBook";
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           addr03dc:
                                                                                                                           §§push("bubble_checked");
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push("bubble_unchecked");
                                                                                                                        }
                                                                                                                        §§pop().dynaBmpSourceName = §§pop();
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           _loc3_.addEventListener(MouseEvent.ROLL_OVER,this.handleRollOverBubble);
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              addr040a:
                                                                                                                              _loc3_.addEventListener(MouseEvent.ROLL_OUT,this.handleRollOutBubble);
                                                                                                                              if(_loc11_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 addr0426:
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 §§push(this.staticBG.width - 8);
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_);
                                                                                                                                    if(_loc11_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * (§§pop() / this._data.maxRange));
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          addr0456:
                                                                                                                                          addr0454:
                                                                                                                                          §§push(§§pop() - 8);
                                                                                                                                       }
                                                                                                                                       §§pop().left = §§pop();
                                                                                                                                       if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          addr0467:
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          §§push(this.height / 2);
                                                                                                                                          if(!(_loc10_ && Boolean(_loc1_)))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - 12);
                                                                                                                                          }
                                                                                                                                          §§pop().top = §§pop();
                                                                                                                                          if(_loc10_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             break loop2;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(_loc11_ || Boolean(_loc3_))
                                                                                                                                       {
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             addr04a3:
                                                                                                                                             §§push(this._data);
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().reachedBubbleTooltip);
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc10_ && Boolean(_loc1_))
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr04d6:
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr04cd:
                                                                                                                                                §§push(§§pop().openBubbleTooltip);
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr04d6);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().toolTip = §§pop();
                                                                                                                                             if(!(_loc10_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                addr04f5:
                                                                                                                                                this.bubbleGroup.addElement(_loc3_);
                                                                                                                                                if(_loc11_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   _loc7_++;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             break loop2;
                                                                                                                                          }
                                                                                                                                          §§push(this._data);
                                                                                                                                          §§goto(addr04cd);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04a3);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0456);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0454);
                                                                                                                              }
                                                                                                                              §§goto(addr04f5);
                                                                                                                           }
                                                                                                                           §§goto(addr0467);
                                                                                                                        }
                                                                                                                        §§goto(addr040a);
                                                                                                                     }
                                                                                                                     §§goto(addr03dc);
                                                                                                                  }
                                                                                                                  §§goto(addr0426);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr0367:
                                                                                                      }
                                                                                                      §§goto(addr0394);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr051d);
                                                                                             }
                                                                                             §§goto(addr03a8);
                                                                                          }
                                                                                          §§goto(addr0381);
                                                                                       }
                                                                                       §§goto(addr0390);
                                                                                    }
                                                                                    §§goto(addr051d);
                                                                                 }
                                                                                 §§goto(addr0399);
                                                                              }
                                                                              §§goto(addr0367);
                                                                           }
                                                                           §§goto(addr051d);
                                                                        }
                                                                        §§goto(addr0323);
                                                                     }
                                                                  }
                                                                  addr051d:
                                                                  return;
                                                               }
                                                               §§goto(addr0399);
                                                            }
                                                            §§goto(addr0390);
                                                         }
                                                         §§goto(addr0164);
                                                      }
                                                      §§goto(addr0146);
                                                   }
                                                   addr01a1:
                                                   _loc6_ = §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      TweenMax.fromTo(this.maskPreviewGroup,0.8,{"left":_loc4_},{
                                                         "delay":1,
                                                         "left":_loc6_
                                                      });
                                                      if(!(_loc10_ && Boolean(this)))
                                                      {
                                                         addr01d6:
                                                         this.maskPreviewGroup.visible = this._data.previewPercent > 0;
                                                      }
                                                      §§goto(addr01e7);
                                                   }
                                                   §§goto(addr01d6);
                                                }
                                                §§goto(addr0164);
                                             }
                                             §§goto(addr0116);
                                          }
                                          addr0175:
                                          §§goto(addr01a1);
                                          §§push(Math.floor(4 + this.staticPreviewBarMask.width * -1 * (1 - Math.min(Number(this._data.previewPercent),1))));
                                       }
                                       §§goto(addr0164);
                                    }
                                    §§goto(addr02de);
                                 }
                                 addr016b:
                                 if(§§pop())
                                 {
                                    if(_loc11_)
                                    {
                                       §§goto(addr0175);
                                    }
                                    §§goto(addr01d6);
                                 }
                                 §§goto(addr01e7);
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr00e5);
                        }
                     }
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0093);
            }
            §§goto(addr016b);
         }
         §§goto(addr00b7);
      }
      
      private function handleRollOutBubble(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            dispatchEvent(new Event("RollOutBarComponent"));
            if(_loc3_)
            {
               addr003d:
               param1.target.filters = [];
            }
            return;
         }
         §§goto(addr003d);
      }
      
      private function handleRollOverBubble(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._currentThreshold = Number(param1.target.id);
            if(!_loc3_)
            {
               param1.target.filters = [new GlowFilter(201326591,1,4,4,2,1)];
               if(_loc2_)
               {
                  addr0073:
                  dispatchEvent(new Event("RollOverBarComponent"));
               }
               return;
            }
         }
         §§goto(addr0073);
      }
      
      private function _SecurityBarPartComponent_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.gap = 0;
                  if(!_loc2_)
                  {
                     addr0051:
                     _loc1_.mxmlContent = [this._SecurityBarPartComponent_BriskImageDynaLib1_c(),this._SecurityBarPartComponent_BriskImageDynaLib2_c(),this._SecurityBarPartComponent_BriskImageDynaLib3_c()];
                     if(!_loc2_)
                     {
                        addr006d:
                        _loc1_.id = "staticBG";
                        if(_loc3_)
                        {
                           addr0078:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00a1:
                                    this.staticBG = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00ab:
                                       BindingManager.executeBindings(this,"staticBG",this.staticBG);
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr006d);
            }
            §§goto(addr00a1);
         }
         §§goto(addr0051);
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_bg_left";
               if(!_loc2_)
               {
                  addr005e:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr005e);
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "infrabar_bg_middle";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0074:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0074);
            }
         }
         addr0084:
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_bg_right";
               if(_loc2_)
               {
                  addr005d:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0069:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0069);
         }
         §§goto(addr005d);
      }
      
      private function _SecurityBarPartComponent_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.gap = 0;
               if(!_loc3_)
               {
                  _loc1_.left = 4;
                  if(!_loc3_)
                  {
                     _loc1_.right = 4;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.mxmlContent = [this._SecurityBarPartComponent_BriskImageDynaLib4_c(),this._SecurityBarPartComponent_BriskImageDynaLib5_c(),this._SecurityBarPartComponent_BriskImageDynaLib6_c()];
                        if(!(_loc3_ && _loc2_))
                        {
                           addr007e:
                           _loc1_.id = "staticPreviewBarMask";
                           if(_loc2_)
                           {
                              addr0089:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       addr00b1:
                                       this.staticPreviewBarMask = _loc1_;
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr00c3:
                                          BindingManager.executeBindings(this,"staticPreviewBarMask",this.staticPreviewBarMask);
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00c3);
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr007e);
            }
         }
         §§goto(addr00b1);
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr004c);
            }
            §§goto(addr006c);
         }
         addr004c:
         _loc1_.dynaBmpSourceName = "infrabar_yellow_left";
         if(_loc2_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr006c:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc2_)
            {
               §§goto(addr002c);
            }
            §§goto(addr004b);
         }
         addr002c:
         _loc1_.dynaBmpSourceName = "infrabar_yellow_middle";
         if(!(_loc2_ && _loc2_))
         {
            addr004b:
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_yellow_right";
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr005e);
               }
            }
            §§goto(addr0072);
         }
         addr005e:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               addr0072:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.mxmlContent = [this._SecurityBarPartComponent_HGroup3_c()];
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.id = "maskPreviewGroup";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr006d:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr008b);
                           }
                           §§goto(addr009d);
                        }
                     }
                     addr008b:
                     this.maskPreviewGroup = _loc1_;
                     if(_loc3_ || _loc2_)
                     {
                        addr009d:
                        BindingManager.executeBindings(this,"maskPreviewGroup",this.maskPreviewGroup);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr00aa);
            }
            §§goto(addr006d);
         }
         addr00aa:
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.gap = 0;
            if(_loc3_ || _loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._SecurityBarPartComponent_BriskImageDynaLib7_c(),this._SecurityBarPartComponent_BriskImageDynaLib8_c(),this._SecurityBarPartComponent_BriskImageDynaLib9_c()];
                     if(_loc3_ || _loc3_)
                     {
                        addr009c:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr00b0:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr009c);
               }
            }
            addr00b4:
            return _loc1_;
         }
         §§goto(addr00b0);
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_yellow_left";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0050:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0050);
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_yellow_middle";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.percentWidth = 100;
                  §§goto(addr004a);
               }
            }
            §§goto(addr007d);
         }
         addr004a:
         if(!_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               §§goto(addr0071);
            }
            §§goto(addr007d);
         }
         addr0071:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr007d:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_)
            {
               addr0049:
               _loc1_.dynaBmpSourceName = "infrabar_yellow_right";
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0068:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0068);
         }
         §§goto(addr0049);
      }
      
      private function _SecurityBarPartComponent_HGroup4_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.verticalCenter = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.gap = 0;
               if(_loc2_)
               {
                  addr003a:
                  _loc1_.left = 4;
                  if(_loc2_)
                  {
                     _loc1_.right = 4;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0062:
                        _loc1_.mxmlContent = [this._SecurityBarPartComponent_BriskImageDynaLib10_c(),this._SecurityBarPartComponent_BriskImageDynaLib11_c(),this._SecurityBarPartComponent_BriskImageDynaLib12_c()];
                        if(!_loc3_)
                        {
                           addr007e:
                           _loc1_.id = "staticBarMask";
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr00b2);
                                 }
                                 §§goto(addr00cd);
                              }
                              §§goto(addr00bb);
                           }
                           addr00b2:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr00bb:
                              this.staticBarMask = _loc1_;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00cd:
                                 BindingManager.executeBindings(this,"staticBarMask",this.staticBarMask);
                              }
                           }
                           §§goto(addr00da);
                        }
                        §§goto(addr00cd);
                     }
                     addr00da:
                     return _loc1_;
                  }
                  §§goto(addr0062);
               }
               §§goto(addr00b2);
            }
            §§goto(addr003a);
         }
         §§goto(addr007e);
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "infrabar_green_left";
               if(_loc2_ || _loc2_)
               {
                  addr0062:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr006e:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr006e);
         }
         §§goto(addr0062);
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc3_ && Boolean(this)))
            {
               addr0040:
               _loc1_.dynaBmpSourceName = "infrabar_green_middle";
               if(_loc2_ || Boolean(this))
               {
                  addr0060:
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        addr0074:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0080:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0080);
            }
            §§goto(addr0060);
         }
         §§goto(addr0040);
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib12_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_green_right";
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0057:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr006b);
            }
            addr006f:
            return _loc1_;
         }
         §§goto(addr0057);
      }
      
      private function _SecurityBarPartComponent_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentHeight = 100;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._SecurityBarPartComponent_HGroup5_c()];
               if(!_loc2_)
               {
                  addr0050:
                  _loc1_.id = "maskGroup";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr008e:
                              this.maskGroup = _loc1_;
                              if(_loc3_ || _loc3_)
                              {
                                 addr00a0:
                                 BindingManager.executeBindings(this,"maskGroup",this.maskGroup);
                              }
                           }
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00a0);
               }
               addr00ad:
               return _loc1_;
            }
            §§goto(addr00a0);
         }
         §§goto(addr0050);
      }
      
      private function _SecurityBarPartComponent_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.mxmlContent = [this._SecurityBarPartComponent_BriskImageDynaLib13_c(),this._SecurityBarPartComponent_BriskImageDynaLib14_c(),this._SecurityBarPartComponent_BriskImageDynaLib15_c()];
                     if(_loc3_)
                     {
                        §§goto(addr0083);
                     }
                  }
                  §§goto(addr0097);
               }
               addr0083:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0097:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0097);
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_green_left";
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0073:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0073);
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib14_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_green_middle";
               if(_loc3_)
               {
                  §§goto(addr0048);
               }
               §§goto(addr008b);
            }
         }
         addr0048:
         _loc1_.percentWidth = 100;
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               §§goto(addr0077);
            }
            §§goto(addr008b);
         }
         addr0077:
         if(!_loc1_.document)
         {
            if(_loc3_ || _loc3_)
            {
               addr008b:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SecurityBarPartComponent_BriskImageDynaLib15_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infrabar_green_right";
               if(!_loc3_)
               {
                  addr0041:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0041);
      }
      
      private function _SecurityBarPartComponent_Group4_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.includeInLayout = false;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "bubbleGroup";
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0085:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr008e);
                           }
                           §§goto(addr0098);
                        }
                     }
                  }
                  §§goto(addr008e);
               }
            }
            §§goto(addr0085);
         }
         addr008e:
         this.bubbleGroup = _loc1_;
         if(_loc3_)
         {
            addr0098:
            BindingManager.executeBindings(this,"bubbleGroup",this.bubbleGroup);
         }
         return _loc1_;
      }
      
      public function ___SecurityBarPartComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete();
         }
      }
      
      private function _SecurityBarPartComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc2_)
            {
               §§push(§§newactivation());
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || _loc1_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Number
                        {
                           return staticPreviewBarMask.width;
                        },null,"maskPreviewGroup.width");
                        if(!_loc2_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_)
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():Object
                                    {
                                       return staticPreviewBarMask.width * -1;
                                    },null,"maskPreviewGroup.left");
                                    if(_loc3_)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc2_)
                                       {
                                          addr00b5:
                                          §§push(§§pop().§§slot[1]);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§push(2);
                                             if(_loc3_ || _loc1_)
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():Number
                                                {
                                                   return staticBarMask.width;
                                                },null,"maskGroup.width");
                                                addr00d3:
                                                if(!_loc2_)
                                                {
                                                   addr00f5:
                                                   §§push(§§newactivation());
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr011b);
                                                   }
                                                   §§goto(addr0119);
                                                }
                                                §§goto(addr0117);
                                             }
                                             §§goto(addr0105);
                                          }
                                          addr011b:
                                       }
                                       §§goto(addr00fc);
                                    }
                                    §§goto(addr00f5);
                                 }
                                 §§goto(addr0105);
                              }
                              §§goto(addr011b);
                           }
                           addr00fc:
                           §§push(§§pop().§§slot[1]);
                           if(_loc3_)
                           {
                              addr0105:
                              §§pop()[3] = new Binding(this,function():Object
                              {
                                 return staticBarMask.width * -1;
                              },null,"maskGroup.left");
                              addr0119:
                              addr0117:
                              return result;
                           }
                        }
                        §§goto(addr00f5);
                     }
                     §§goto(addr00d3);
                  }
                  §§goto(addr011b);
               }
               §§goto(addr00b5);
            }
            §§goto(addr00f5);
         }
         §§goto(addr00b5);
      }
      
      [Bindable(event="propertyChange")]
      public function get bubbleGroup() : Group
      {
         return this._756762963bubbleGroup;
      }
      
      public function set bubbleGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._756762963bubbleGroup;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr004b:
                  this._756762963bubbleGroup = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0081:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubbleGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0081);
               }
            }
            addr0090:
            return;
         }
         §§goto(addr004b);
      }
      
      [Bindable(event="propertyChange")]
      public function get maskGroup() : Group
      {
         return this._74026253maskGroup;
      }
      
      public function set maskGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._74026253maskGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._74026253maskGroup = param1;
                  if(_loc3_)
                  {
                     addr004c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maskGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr004c);
            }
         }
         addr0073:
      }
      
      [Bindable(event="propertyChange")]
      public function get maskPreviewGroup() : Group
      {
         return this._169633629maskPreviewGroup;
      }
      
      public function set maskPreviewGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._169633629maskPreviewGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._169633629maskPreviewGroup = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maskPreviewGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007a);
            }
         }
         addr0089:
      }
      
      [Bindable(event="propertyChange")]
      public function get staticBG() : HGroup
      {
         return this._1318318899staticBG;
      }
      
      public function set staticBG(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1318318899staticBG;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1318318899staticBG = param1;
                  if(_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticBG",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get staticBarMask() : HGroup
      {
         return this._146540369staticBarMask;
      }
      
      public function set staticBarMask(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._146540369staticBarMask;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._146540369staticBarMask = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr006a);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr006a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticBarMask",_loc2_,param1));
                  }
               }
               §§goto(addr0079);
            }
            addr0079:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get staticPreviewBarMask() : HGroup
      {
         return this._1276435141staticPreviewBarMask;
      }
      
      public function set staticPreviewBarMask(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1276435141staticPreviewBarMask;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1276435141staticPreviewBarMask = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr006f);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticPreviewBarMask",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr005f);
      }
   }
}

