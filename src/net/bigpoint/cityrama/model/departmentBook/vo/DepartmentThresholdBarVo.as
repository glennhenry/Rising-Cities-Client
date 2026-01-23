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
         super();
         this.thresholds = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
         this.currentValue = 0;
         this.maxRange = 0;
      }
      
      public function get percent() : Number
      {
         return this.maxRange > 0 ? this.currentValue / this.maxRange : 0;
      }
      
      public function get previewPercent() : Number
      {
         return this.maxRange > 0 ? this.previewValue / this.maxRange : 0;
      }
      
      public function get copy() : DepartmentThresholdBarVo
      {
         var _loc1_:DepartmentThresholdBarVo = new DepartmentThresholdBarVo();
         _loc1_.currentValue = this.currentValue;
         _loc1_.maxRange = this.maxRange;
         _loc1_.thresholds = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
         var _loc2_:int = 0;
         while(_loc2_ < this.thresholds.length)
         {
            _loc1_.thresholds.push(this.thresholds[_loc2_].copy);
            _loc2_++;
         }
         _loc1_.previewValue = this.previewValue;
         _loc1_.showBubbles = this.showBubbles;
         _loc1_.showPreview = this.showPreview;
         _loc1_.openBubbleTooltip = this.openBubbleTooltip;
         _loc1_.reachedBubbleTooltip = this.reachedBubbleTooltip;
         return _loc1_;
      }
   }
}

