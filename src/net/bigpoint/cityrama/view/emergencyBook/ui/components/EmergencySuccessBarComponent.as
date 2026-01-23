package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencySuccessBarVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class EmergencySuccessBarComponent extends SkinnableComponent
   {
      
      public static const BUBBLE_CLICKED:String = "MARKER_CLICKED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         BUBBLE_CLICKED = "MARKER_CLICKED";
         if(_loc2_)
         {
            _skinParts = {
               "capBubbleLabel":true,
               "progressBar":true,
               "icon":true,
               "capBar":true,
               "advanceBar":true,
               "labelDisplay":true,
               "capBubble":true
            };
         }
      }
      
      private var _data:EmergencySuccessBarVo;
      
      private var _originalData:EmergencySuccessBarVo;
      
      private var _dataIsDirty:Boolean;
      
      private var _label:String = "";
      
      public var progressBar:Group;
      
      public var capBubble:Button;
      
      public var capBar:Group;
      
      public var advanceBar:Group;
      
      public var icon:BriskImageDynaLib;
      
      public var capBubbleLabel:LocaLabel;
      
      public var labelDisplay:LocaLabel;
      
      public function EmergencySuccessBarComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function set data(param1:EmergencySuccessBarVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_)
               {
                  this._data = param1;
                  if(_loc2_)
                  {
                     addr0045:
                     this._dataIsDirty = true;
                     if(_loc2_)
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0045);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null;
         if(_loc3_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc2_))
            {
               if(this._dataIsDirty)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._dataIsDirty = false;
                     if(_loc3_ || _loc2_)
                     {
                        addr0055:
                        this.capProgress = Math.max(4,100 - this._data.progressCap);
                        if(!_loc2_)
                        {
                           §§goto(addr0071);
                        }
                        §§goto(addr00c7);
                     }
                     addr0071:
                     §§push(ResourceManager.getInstance());
                     §§push("rcl.emergencybook.layer");
                     if(_loc3_ || _loc3_)
                     {
                        §§push("");
                        if(!_loc2_)
                        {
                           §§goto(addr009b);
                        }
                        §§goto(addr00aa);
                     }
                     addr009b:
                     §§push(§§pop() + §§pop());
                     §§push("");
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr00aa:
                        §§push(§§pop() + "rcl.emergencybook.layer.capbubblelabel");
                     }
                     §§push(§§pop().getString(§§pop(),§§pop()));
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     _loc1_ = §§pop();
                     if(!(_loc2_ && _loc3_))
                     {
                        addr00c7:
                        this.capBubbleLabel.text = StringUtil.substitute(_loc1_,Math.round(this._data.progressCap));
                        if(!_loc2_)
                        {
                           this.capBubble.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.emergencyLayer" + "","" + "rcl.tooltips.emergencyLayer.clickToStartScreen");
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              this.capProgressVisible = this._data.capVisible;
                              if(_loc3_)
                              {
                                 addr0131:
                                 this.advanceProgressVisible = this._data.advanceVisible;
                              }
                              §§goto(addr013d);
                           }
                        }
                        §§goto(addr0131);
                     }
                     §§goto(addr013d);
                  }
                  §§goto(addr0055);
               }
               addr013d:
               return;
            }
            §§goto(addr0055);
         }
         §§goto(addr00c7);
      }
      
      public function set successProgress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            §§push(Math.max(4,Math.min(this._data.progressCap,param1)));
            if(_loc3_ || Boolean(param1))
            {
               param1 = §§pop();
               if(_loc3_)
               {
                  addr0062:
                  if(param1 != this.progressBar.percentWidth)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0079:
                        TweenMax.to(this.progressBar,0.8,{"percentWidth":param1});
                     }
                  }
               }
               return;
            }
            §§goto(addr0062);
         }
         §§goto(addr0079);
      }
      
      public function set capProgress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 != this.capBar.percentWidth)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr003c:
                  TweenMax.to(this.capBar,0.8,{"percentWidth":param1});
               }
            }
            return;
         }
         §§goto(addr003c);
      }
      
      public function set capProgressVisible(param1:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            this.capBar.visible = this.capBar.includeInLayout = param1;
            if(_loc3_)
            {
               this.capBubble.visible = this.capBubble.includeInLayout = param1;
               addr0044:
               if(_loc3_)
               {
                  this.capBubbleLabel.visible = this.capBubbleLabel.includeInLayout = param1;
               }
            }
            return;
         }
         §§goto(addr0044);
      }
      
      public function set advanceProgressVisible(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc2_))
         {
            this.advanceBar.visible = this.advanceBar.includeInLayout = param1;
         }
      }
      
      public function set advanceProgress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1 = Math.min(param1,this._data.progressCap);
            if(!(_loc2_ && Boolean(this)))
            {
               TweenMax.to(this.advanceBar,0.8,{"percentWidth":param1});
            }
         }
      }
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._label = param1;
            if(_loc3_ || Boolean(param1))
            {
               §§push(this.labelDisplay);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0055:
                        this.labelDisplay.text = this.label;
                        addr0051:
                     }
                  }
                  return;
               }
               §§goto(addr0055);
            }
         }
         §§goto(addr0051);
      }
      
      public function get data() : EmergencySuccessBarVo
      {
         return this._data;
      }
      
      public function get originalData() : EmergencySuccessBarVo
      {
         return this._originalData;
      }
      
      public function set originalData(param1:EmergencySuccessBarVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._originalData = param1;
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super.partAdded(param1,param2);
            if(_loc3_ || Boolean(param1))
            {
               if(param2 == this.labelDisplay)
               {
                  if(_loc3_ || _loc3_)
                  {
                     this.labelDisplay.text = this._label;
                     if(!(_loc3_ || Boolean(param1)))
                     {
                        addr0094:
                        this.capBubble.addEventListener(MouseEvent.CLICK,this.handleCapClick);
                     }
                  }
               }
               else if(param2 == this.capBubble)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr0094);
                  }
               }
            }
         }
      }
      
      private function handleCapClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            dispatchEvent(new Event(BUBBLE_CLICKED,true));
         }
      }
   }
}

