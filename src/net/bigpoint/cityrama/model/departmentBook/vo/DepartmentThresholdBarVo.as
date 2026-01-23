package net.bigpoint.cityrama.model.departmentBook.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   
   public class DepartmentThresholdBarVo
   {
      
      public var currentValue:Number;
      
      public var previewValue:Number;
      
      public var maxRange:Number;
      
      public var thresholds:Vector.<ConfigProfessionalAttributeThresholdDTO>;
      
      public var showBubbles:Boolean = true;
      
      public var showPreview:Boolean = false;
      
      public var openBubbleTooltip:String;
      
      public var reachedBubbleTooltip:String;
      
      public function DepartmentThresholdBarVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               this.thresholds = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
               if(_loc2_)
               {
                  this.currentValue = 0;
                  if(_loc2_ || Boolean(this))
                  {
                     addr004f:
                     this.maxRange = 0;
                  }
               }
               §§goto(addr0055);
            }
            §§goto(addr004f);
         }
         addr0055:
      }
      
      public function get percent() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this.maxRange);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  addr0036:
                  §§push(this.currentValue);
                  if(_loc1_ || Boolean(this))
                  {
                     §§push(§§pop() / this.maxRange);
                     if(_loc1_)
                     {
                        addr0051:
                        §§push(§§pop());
                        if(_loc1_)
                        {
                        }
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr0051);
               }
               else
               {
                  §§push(0);
               }
            }
            addr005e:
            return §§pop();
         }
         §§goto(addr0036);
      }
      
      public function get previewPercent() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.maxRange);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() > 0)
               {
                  addr0036:
                  §§push(this.previewValue);
                  if(_loc1_)
                  {
                     §§push(§§pop() / this.maxRange);
                     if(!_loc2_)
                     {
                        addr0049:
                        §§push(§§pop());
                        if(_loc1_ || Boolean(this))
                        {
                        }
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr0049);
               }
               else
               {
                  §§push(0);
               }
            }
            addr005e:
            return §§pop();
         }
         §§goto(addr0036);
      }
      
      public function get copy() : DepartmentThresholdBarVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:DepartmentThresholdBarVo = new DepartmentThresholdBarVo();
         if(!_loc4_)
         {
            _loc1_.currentValue = this.currentValue;
            if(_loc3_)
            {
               _loc1_.maxRange = this.maxRange;
               if(_loc3_)
               {
                  addr003f:
                  _loc1_.thresholds = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
               }
            }
            var _loc2_:int = 0;
            while(true)
            {
               if(_loc2_ >= this.thresholds.length)
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr009a:
                     _loc1_.previewValue = this.previewValue;
                     if(_loc3_)
                     {
                        _loc1_.showBubbles = this.showBubbles;
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.showPreview = this.showPreview;
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                     }
                  }
                  _loc1_.openBubbleTooltip = this.openBubbleTooltip;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.reachedBubbleTooltip = this.reachedBubbleTooltip;
                  }
                  break;
               }
               _loc1_.thresholds.push(this.thresholds[_loc2_].copy);
               if(_loc4_)
               {
                  break;
               }
               _loc2_++;
               if(!_loc4_)
               {
                  continue;
               }
               §§goto(addr009a);
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
   }
}

