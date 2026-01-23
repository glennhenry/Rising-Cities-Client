package net.bigpoint.cityrama.model.miniLayer.vo
{
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   
   public class ImprovementReplacementMiniLayerVo extends ImprovementMiniLayerVo
   {
      
      public static const STATE_REPLACE:String = "STATE_REPLACE";
      
      public static const STATE_REPLACE_EXPIRED:String = "STATE_REPLACE_EXPIRED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && ImprovementReplacementMiniLayerVo))
      {
         STATE_REPLACE = "STATE_REPLACE";
         if(_loc1_ || _loc1_)
         {
            addr003d:
            STATE_REPLACE_EXPIRED = "STATE_REPLACE_EXPIRED";
         }
         return;
      }
      §§goto(addr003d);
      
      private var _newImprovement:ImprovementVo;
      
      private var _state:String;
      
      public function ImprovementReplacementMiniLayerVo(param1:ImprovementMiniLayerVo)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0032);
            }
            §§goto(addr005b);
         }
         addr0032:
         improvementVo = param1.improvementVo;
         if(!_loc3_)
         {
            slotId = param1.slotId;
            if(!_loc3_)
            {
               addr005b:
               buildingId = param1.buildingId;
               if(!_loc3_)
               {
                  §§goto(addr006a);
               }
            }
            §§goto(addr0079);
         }
         addr006a:
         currentTime = param1.currentTime;
         if(!_loc3_)
         {
            addr0079:
            realCurrency = param1.realCurrency;
         }
      }
      
      public function get newImprovement() : ImprovementVo
      {
         return this._newImprovement;
      }
      
      public function set newImprovement(param1:ImprovementVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._newImprovement = param1;
         }
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._state = param1;
         }
      }
      
      public function get oldImproData() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            if(improvementVo)
            {
               if(!_loc2_)
               {
                  return ImprovementLayerProxy.improvementGfx(improvementVo.config);
               }
            }
         }
         return null;
      }
      
      public function get newImproData() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._newImprovement)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  return ImprovementLayerProxy.improvementGfx(this._newImprovement.config);
               }
            }
         }
         return null;
      }
      
      public function get oldImproBackground() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(improvementVo)
            {
               if(!(_loc1_ && _loc2_))
               {
                  return ImprovementLayerProxy.improvementBackground(improvementVo.config.quality);
               }
            }
         }
         return null;
      }
      
      public function get newImproBackground() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            if(this._newImprovement)
            {
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr003d);
               }
            }
            return null;
         }
         addr003d:
         return ImprovementLayerProxy.improvementBackground(this._newImprovement.config.quality);
      }
      
      public function get newImproBadge() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this._newImprovement)
            {
               if(!(_loc1_ && _loc2_))
               {
                  return ImprovementLayerProxy.improvementQualityBadge(this._newImprovement.config.quality);
               }
            }
         }
         return null;
      }
      
      public function get oldImproBadge() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            if(improvementVo)
            {
               if(_loc2_)
               {
                  §§goto(addr0034);
               }
            }
            return null;
         }
         addr0034:
         return ImprovementLayerProxy.improvementQualityBadge(improvementVo.config.quality);
      }
      
      public function get oldImproName() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(improvementVo)
            {
               if(!_loc2_)
               {
                  §§goto(addr0029);
               }
            }
            return "";
         }
         addr0029:
         return ImprovementLayerProxy.improvementName(improvementVo.config);
      }
      
      public function get newImproName() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(this._newImprovement)
            {
               if(_loc1_ || _loc2_)
               {
                  return ImprovementLayerProxy.improvementName(this._newImprovement.config);
               }
            }
         }
         return "";
      }
   }
}

