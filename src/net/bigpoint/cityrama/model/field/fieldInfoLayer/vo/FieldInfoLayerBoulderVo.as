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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public function set vcStock(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._vcStock = param1;
         }
      }
      
      public function set demolitionCosts(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._demolitionCosts = param1;
         }
      }
      
      public function get costData() : ArrayList
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ArrayList = new ArrayList();
         if(_loc2_)
         {
            if(this.affordable)
            {
               if(!_loc3_)
               {
                  _loc1_.addItem(new SimpleItemVo(LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.removeCost"),this._demolitionCosts,this._demolitionCosts,"layer_cc_icon","gui_resources_icons"));
                  addr002e:
                  if(_loc3_)
                  {
                  }
               }
            }
            else
            {
               _loc1_.addItem(new SimpleItemVo(LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.removeCost"),this._demolitionCosts,this._demolitionCosts,"layer_cc_icon","gui_resources_icons","","",-1));
            }
            return _loc1_;
         }
         §§goto(addr002e);
      }
      
      public function get affordable() : Boolean
      {
         return this._demolitionCosts <= this._vcStock;
      }
   }
}

