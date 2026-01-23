package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   
   public class CinemaFieldObjectVo extends SpecialFieldObjectVo
   {
      
      private var _viewsToday:uint = 0;
      
      private var _maxViews:uint = 0;
      
      private var _disabled:Boolean;
      
      private var _inMaintenance:Boolean;
      
      public function CinemaFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
      }
      
      override public function get useConstructionAsset() : Boolean
      {
         return false;
      }
      
      override public function isUnderConstruction() : Boolean
      {
         return false;
      }
      
      public function get videoAvailable() : Boolean
      {
         if(!this.disabled && !this.inMaintenance)
         {
            return this._viewsToday < this._maxViews;
         }
         return false;
      }
      
      public function set viewsToday(param1:uint) : void
      {
         this._viewsToday = param1;
      }
      
      public function set maxViews(param1:uint) : void
      {
         this._maxViews = param1;
      }
      
      public function get disabled() : Boolean
      {
         return this._disabled;
      }
      
      public function set disabled(param1:Boolean) : void
      {
         this._disabled = param1;
      }
      
      public function get inMaintenance() : Boolean
      {
         return this._inMaintenance;
      }
      
      public function set inMaintenance(param1:Boolean) : void
      {
         this._inMaintenance = param1;
      }
   }
}

