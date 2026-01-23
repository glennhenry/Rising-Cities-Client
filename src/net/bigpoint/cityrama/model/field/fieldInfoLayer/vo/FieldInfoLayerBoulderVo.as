package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import mx.collections.ArrayList;
   import net.bigpoint.cityrama.model.detailViews.vo.SimpleItemVo;
   import net.bigpoint.util.LocaUtils;
   
   public class FieldInfoLayerBoulderVo extends FieldInfoLayerHeaderVo
   {
      
      private var _demolitionCosts:Number;
      
      private var _vcStock:Number;
      
      public function FieldInfoLayerBoulderVo()
      {
         super();
      }
      
      public function set vcStock(param1:Number) : void
      {
         this._vcStock = param1;
      }
      
      public function set demolitionCosts(param1:Number) : void
      {
         this._demolitionCosts = param1;
      }
      
      public function get costData() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         if(this.affordable)
         {
            _loc1_.addItem(new SimpleItemVo(LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.removeCost"),this._demolitionCosts,this._demolitionCosts,"layer_cc_icon","gui_resources_icons"));
         }
         else
         {
            _loc1_.addItem(new SimpleItemVo(LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.removeCost"),this._demolitionCosts,this._demolitionCosts,"layer_cc_icon","gui_resources_icons","","",-1));
         }
         return _loc1_;
      }
      
      public function get affordable() : Boolean
      {
         return this._demolitionCosts <= this._vcStock;
      }
   }
}

